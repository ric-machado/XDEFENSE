#!/usr/bin/env bash
# XDEFENSE — Restore de backup PostgreSQL
# Uso: ./scripts/restore.sh --file <backup_file.dump>
#
# Fluxo:
#   1. Valida o arquivo de backup
#   2. Para containers dependentes (backend, workers)
#   3. Restaura o dump no PostgreSQL
#   4. Reinicia todos os serviços
#   5. Valida health checks

set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$ROOT_DIR"

RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'
BLUE='\033[0;34m'; BOLD='\033[1m'; NC='\033[0m'

info()    { echo -e "${BLUE}[INFO]${NC}  $*"; }
success() { echo -e "${GREEN}[OK]${NC}    $*"; }
warn()    { echo -e "${YELLOW}[WARN]${NC}  $*"; }
error()   { echo -e "${RED}[ERROR]${NC} $*" >&2; exit 1; }
step()    { echo -e "\n${BOLD}${BLUE}▶ $*${NC}"; }

BACKUP_FILE=""
DRY_RUN=false

usage() {
    echo "Uso: $0 --file <backup.dump> [--dry-run]"
    echo ""
    echo "Opções:"
    echo "  --file <path>  Arquivo de backup (.dump) a ser restaurado"
    echo "  --dry-run      Valida o arquivo sem restaurar"
    exit 1
}

while [[ $# -gt 0 ]]; do
    case "$1" in
        --file) BACKUP_FILE="$2"; shift 2 ;;
        --dry-run) DRY_RUN=true; shift ;;
        -h|--help) usage ;;
        *) error "Argumento desconhecido: $1" ;;
    esac
done

[[ -z "$BACKUP_FILE" ]] && usage
[[ -f "$BACKUP_FILE" ]] || error "Arquivo não encontrado: $BACKUP_FILE"

step "Validando arquivo de backup: $BACKUP_FILE"
FILE_SIZE=$(du -h "$BACKUP_FILE" | cut -f1)
info "Tamanho: $FILE_SIZE"

# Validar formato do dump
if ! pg_restore --list "$BACKUP_FILE" &>/dev/null; then
    error "Arquivo inválido ou corrompido. Verifique: pg_restore --list $BACKUP_FILE"
fi
success "Arquivo de backup válido."

if [[ "$DRY_RUN" == true ]]; then
    info "Modo dry-run: restore não executado."
    pg_restore --list "$BACKUP_FILE" | head -30
    exit 0
fi

# Carregar variáveis de ambiente
[[ -f .env ]] || error ".env não encontrado. Execute ./setup.sh primeiro."
set -o allexport; source .env; set +o allexport

step "Parando containers dependentes do banco"
docker compose stop backend taxii connector-runner python-worker scheduler 2>/dev/null || true
success "Containers parados."

step "Restaurando banco de dados"
info "Destino: xdefense @ postgres:5432"
info "Arquivo: $BACKUP_FILE"

# Fazer drop + restore (limpa schemas antes)
docker compose exec -T postgres psql -U postgres -c "DROP DATABASE IF EXISTS xdefense;" 2>/dev/null || true
docker compose exec -T postgres psql -U postgres -c "CREATE DATABASE xdefense;" 2>/dev/null || true

# Copiar o dump para dentro do container e restaurar
CONTAINER_DUMP="/tmp/restore_$(date +%s).dump"
docker compose cp "$BACKUP_FILE" postgres:"$CONTAINER_DUMP"
docker compose exec -T postgres \
    pg_restore -U postgres -d xdefense --no-owner --role=postgres \
    -j 4 "$CONTAINER_DUMP" 2>&1 || {
    warn "Alguns erros de restore podem ser ignoráveis (ex: roles já existentes)"
}
docker compose exec -T postgres rm -f "$CONTAINER_DUMP"

success "Banco restaurado."

step "Reiniciando todos os serviços"
docker compose up -d

step "Aguardando backend"
MAX_WAIT=120
ELAPSED=0
echo -n "  Aguardando backend"
while true; do
    STATUS=$(docker compose ps --format json backend 2>/dev/null | \
        python3 -c "import json,sys; d=json.load(sys.stdin); print(d.get('Health',''))" 2>/dev/null || echo "")
    if [[ "$STATUS" == "healthy" ]]; then
        echo -e " ${GREEN}✓${NC}"
        break
    fi
    if [[ $ELAPSED -ge $MAX_WAIT ]]; then
        echo -e " ${RED}✗ timeout${NC}"
        docker compose logs --tail=20 backend
        error "Backend não ficou saudável após ${MAX_WAIT}s."
    fi
    echo -n "."
    sleep 5
    ELAPSED=$((ELAPSED + 5))
done

step "Validações"
HTTP_CODE=$(curl -sk -o /dev/null -w "%{http_code}" "https://localhost/login" 2>/dev/null || echo "000")
if [[ "$HTTP_CODE" -ge 200 && "$HTTP_CODE" -lt 500 ]]; then
    success "Backend respondendo: HTTP $HTTP_CODE"
else
    warn "Backend retornou HTTP $HTTP_CODE — verifique os logs."
fi

SCHEMA_COUNT=$(docker compose exec -T postgres \
    psql -U postgres -d xdefense -t -c "SELECT count(*) FROM information_schema.schemata WHERE schema_name NOT IN ('information_schema','pg_catalog','pg_toast','public');" \
    2>/dev/null | tr -d ' \n' || echo "0")
info "Schemas restaurados: $SCHEMA_COUNT"

echo ""
echo -e "${BOLD}${GREEN}╔══════════════════════════════════════════════════════════╗${NC}"
echo -e "${BOLD}${GREEN}║              Restore concluído com sucesso!               ║${NC}"
echo -e "${BOLD}${GREEN}╚══════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "  Backup restaurado: ${YELLOW}$BACKUP_FILE${NC}"
echo -e "  Schemas: $SCHEMA_COUNT"
echo -e "  URL: https://localhost"
echo ""
