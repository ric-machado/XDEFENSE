#!/usr/bin/env bash
# XDEFENSE — Setup Automatizado
# Uso: ./setup.sh [--reset]
#
# --reset  Regenera .env e credenciais mesmo que o arquivo já exista
#
# Fluxo:
#   1. Verifica dependências
#   2. Gera credenciais (senhas aleatórias)
#   3. Escreve .env
#   4. Gera certificado SSL auto-assinado
#   5. Build das imagens Docker
#   6. Sobe postgres, redis, rabbitmq (infra base)
#   7. Aguarda health checks
#   8. Sobe serviços restantes
#   9. Aguarda backend ficar pronto
#  10. Recupera credenciais do administrador (criado automaticamente no 1º boot)
#  11. Exibe credenciais no terminal

set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$ROOT_DIR"

# ── Cores ─────────────────────────────────────────────────────────────────────
RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'
BLUE='\033[0;34m'; BOLD='\033[1m'; NC='\033[0m'

info()    { echo -e "${BLUE}[INFO]${NC}  $*"; }
success() { echo -e "${GREEN}[OK]${NC}    $*"; }
warn()    { echo -e "${YELLOW}[WARN]${NC}  $*"; }
error()   { echo -e "${RED}[ERROR]${NC} $*" >&2; exit 1; }
step()    { echo -e "\n${BOLD}${BLUE}▶ $*${NC}"; }

RESET_MODE=false
[[ "${1:-}" == "--reset" ]] && RESET_MODE=true

# ── 1. Verificar dependências ─────────────────────────────────────────────────
step "Verificando dependências"

check_cmd() {
    command -v "$1" &>/dev/null || error "$1 não encontrado. Instale e tente novamente."
}
check_cmd docker
check_cmd openssl

# Verifica Docker Compose v2
docker compose version &>/dev/null || error "Docker Compose v2 não encontrado. Atualize o Docker."

DOCKER_VERSION=$(docker version --format '{{.Server.Version}}' 2>/dev/null | cut -d. -f1)
[[ "$DOCKER_VERSION" -ge 24 ]] || warn "Docker versão $DOCKER_VERSION detectada. Recomendado v24+."

success "Docker $(docker version --format '{{.Server.Version}}'), Compose $(docker compose version --short), OpenSSL $(openssl version | awk '{print $2}')"

# ── 2. Gerar credenciais ──────────────────────────────────────────────────────
step "Gerando credenciais"

if [[ -f .env && "$RESET_MODE" == false ]]; then
    warn ".env já existe. Use --reset para regenerar. Continuando com .env existente."
    # Carrega variáveis existentes
    set -o allexport; source .env; set +o allexport
else
    gen_pass() { openssl rand -base64 48 | tr -dc 'a-zA-Z0-9!@#%^*' | head -c "${1:-32}"; }
    gen_hex()  { openssl rand -hex "${1:-32}"; }

    POSTGRES_PASSWORD=$(gen_pass 40)
    POSTGRES_APP_PASSWORD=$(gen_pass 40)
    REDIS_PASSWORD=$(gen_pass 32)
    RABBITMQ_PASSWORD=$(gen_pass 32)
    APP_SESSION_SECRET=$(gen_hex 48)
    VAULT_KEY=$(gen_hex 32)
    TAXII_PASSWORD=$(gen_pass 24)
    GRAFANA_PASSWORD=$(gen_pass 24)

    info "Credenciais geradas com sucesso."
fi

# ── 3. Escrever .env ──────────────────────────────────────────────────────────
if [[ ! -f .env || "$RESET_MODE" == true ]]; then
    step "Escrevendo .env"
    cat > .env <<EOF
# XDEFENSE — Gerado automaticamente por setup.sh em $(date -u +"%Y-%m-%dT%H:%M:%SZ")
# NÃO edite manualmente. Use ./setup.sh --reset para regenerar.

# PostgreSQL
POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
POSTGRES_APP_PASSWORD=${POSTGRES_APP_PASSWORD}
POSTGRES_DB=xdefense
POSTGRES_USER=postgres

# PgBouncer
PGBOUNCER_AUTH_USER=xdefense_app
PGBOUNCER_AUTH_PASSWORD=${POSTGRES_APP_PASSWORD}

# Redis
REDIS_PASSWORD=${REDIS_PASSWORD}
REDIS_URL=redis://:${REDIS_PASSWORD}@redis:6379/0

# RabbitMQ
RABBITMQ_PASSWORD=${RABBITMQ_PASSWORD}
RABBITMQ_URL=amqp://xdefense:${RABBITMQ_PASSWORD}@rabbitmq:5672/xdefense

# Aplicação
PORT=9292
NODE_ENV=production
DB_DIR=/data
APP_SESSION_SECRET=${APP_SESSION_SECRET}
XDEFENSE_DB_ENGINE=sqlite

# Vault
VAULT_KEY=${VAULT_KEY}

# TAXII
TAXII_HOST=0.0.0.0
TAXII_PORT=5000
TAXII_AUTH=1
TAXII_PASSWORD=${TAXII_PASSWORD}
TAXII_BACKEND=sqlite
TAXII_DB=/data/taxii.db

# Grafana
GRAFANA_PASSWORD=${GRAFANA_PASSWORD}

# Integrações externas (opcionais)
NVD_API_KEY=
TAXII_PROXY_URL=http://taxii:5000
OSV_API_URL=https://api.osv.dev
CIRCL_API_URL=https://vulnerability.circl.lu
XORCISM_ALLOW_REGISTER=0
XORCISM_BASE_URL=https://localhost

# Log
LOG_LEVEL=INFO
PYTHONUNBUFFERED=1
EOF
    success ".env criado."
fi

# ── 4. Gerar certificado SSL auto-assinado ────────────────────────────────────
step "Gerando certificado SSL auto-assinado"

SSL_DIR="$ROOT_DIR/nginx/ssl"
mkdir -p "$SSL_DIR"

if [[ -f "$SSL_DIR/xdefense.crt" && -f "$SSL_DIR/xdefense.key" && "$RESET_MODE" == false ]]; then
    EXPIRY=$(openssl x509 -enddate -noout -in "$SSL_DIR/xdefense.crt" | cut -d= -f2)
    info "Certificado SSL existente (expira: $EXPIRY). Mantendo."
else
    HOSTNAME="${XDEFENSE_HOSTNAME:-localhost}"
    openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
        -keyout "$SSL_DIR/xdefense.key" \
        -out "$SSL_DIR/xdefense.crt" \
        -subj "/C=BR/ST=SP/L=SaoPaulo/O=XDEFENSE/OU=Security/CN=${HOSTNAME}" \
        -addext "subjectAltName=DNS:${HOSTNAME},DNS:localhost,IP:127.0.0.1" \
        2>/dev/null
    chmod 600 "$SSL_DIR/xdefense.key"
    success "Certificado SSL gerado (válido 365 dias): nginx/ssl/xdefense.crt"
fi

# ── 5. Build das imagens Docker ───────────────────────────────────────────────
step "Construindo imagens Docker"
docker compose build --no-cache 2>&1 | \
    grep -E '(Step|=>|Successfully|ERROR|error)' | head -50 || true
success "Imagens construídas."

# ── 6. Subir infraestrutura base ──────────────────────────────────────────────
step "Iniciando infraestrutura base (postgres, redis, rabbitmq)"
docker compose up -d postgres redis rabbitmq

# ── 7. Aguardar health checks da infra base ───────────────────────────────────
step "Aguardando serviços de infraestrutura ficarem prontos"

wait_healthy() {
    local service="$1"
    local max_wait="${2:-120}"
    local elapsed=0
    local interval=5
    echo -n "  Aguardando $service"
    while true; do
        local status
        status=$(docker compose ps --format json "$service" 2>/dev/null | \
            python3 -c "import json,sys; d=json.load(sys.stdin); print(d.get('Health',''))" 2>/dev/null || echo "")
        if [[ "$status" == "healthy" ]]; then
            echo -e " ${GREEN}✓${NC}"
            return 0
        fi
        if [[ $elapsed -ge $max_wait ]]; then
            echo -e " ${RED}✗ timeout${NC}"
            docker compose logs --tail=20 "$service"
            return 1
        fi
        echo -n "."
        sleep $interval
        elapsed=$((elapsed + interval))
    done
}

wait_healthy postgres 120
wait_healthy redis 60
wait_healthy rabbitmq 90

success "Infraestrutura pronta."

# ── 8. Subir serviços restantes ───────────────────────────────────────────────
step "Iniciando todos os serviços"
docker compose up -d

# ── 9. Aguardar o backend ─────────────────────────────────────────────────────
step "Aguardando o backend XDEFENSE"
wait_healthy backend 120

# ── 10. Recuperar usuário administrador (criado automaticamente no 1º boot) ──
step "Recuperando credenciais do administrador"

# O backend cria o super-admin sozinho no primeiro boot (server/auth.ts:seedAdmin),
# com role Admin real e senha aleatória — grava uma cópia única em /data dentro
# do container para automação. Lemos e removemos o arquivo (mostrado uma vez só).
ADMIN_CREDS_JSON=$(docker compose exec -T backend \
    cat /data/.bootstrap_admin_password 2>/dev/null || echo "")

if [[ -n "$ADMIN_CREDS_JSON" ]]; then
    ADMIN_EMAIL=$(echo "$ADMIN_CREDS_JSON" | python3 -c "import json,sys; print(json.load(sys.stdin)['email'])" 2>/dev/null || echo "admin@xorcism.local")
    ADMIN_PASSWORD=$(echo "$ADMIN_CREDS_JSON" | python3 -c "import json,sys; print(json.load(sys.stdin)['password'])" 2>/dev/null || echo "")
    docker compose exec -T backend rm -f /data/.bootstrap_admin_password &>/dev/null || true
    success "Usuário admin recuperado (criado automaticamente no 1º boot)."
else
    ADMIN_EMAIL="admin@xorcism.local"
    ADMIN_PASSWORD="(verifique: docker compose logs backend | grep -A2 'COMPTE ADMIN')"
    warn "Não foi possível ler a credencial de bootstrap. Veja: docker compose logs backend"
fi

# ── 11. Validações ────────────────────────────────────────────────────────────
step "Validações finais"

check_url() {
    local url="$1" desc="$2"
    local code
    code=$(curl -sk -o /dev/null -w "%{http_code}" "$url" 2>/dev/null || echo "000")
    if [[ "$code" -ge 200 && "$code" -lt 500 ]]; then
        success "$desc → HTTP $code"
    else
        warn "$desc → HTTP $code (verifique: docker compose logs)"
    fi
}

check_url "https://localhost/health"   "Nginx health"
check_url "https://localhost/login"    "Backend login"
check_url "https://localhost/taxii2/"  "TAXII discovery"

PG_SCHEMAS=$(docker compose exec -T postgres \
    psql -U postgres -d xdefense -t -c "\dn" 2>/dev/null | \
    grep -c '|' || echo "0")
if [[ "$PG_SCHEMAS" -ge 13 ]]; then
    success "PostgreSQL: $PG_SCHEMAS schemas criados ✓"
else
    warn "PostgreSQL: apenas $PG_SCHEMAS schemas encontrados (esperado 13)"
fi

CONTAINERS_UP=$(docker compose ps --format json 2>/dev/null | \
    python3 -c "import json,sys; [print(l) for l in sys.stdin]" 2>/dev/null | \
    python3 -c "import json,sys; data=[json.loads(l) for l in sys.stdin if l.strip()]; print(sum(1 for d in data if d.get('State')=='running'))" 2>/dev/null || echo "?")
info "$CONTAINERS_UP containers em execução"

# ── Exibir credenciais ─────────────────────────────────────────────────────────
echo ""
echo -e "${BOLD}${GREEN}╔══════════════════════════════════════════════════════════╗${NC}"
echo -e "${BOLD}${GREEN}║          XDEFENSE instalado com sucesso!                  ║${NC}"
echo -e "${BOLD}${GREEN}╚══════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "  ${BOLD}URL:${NC}         https://localhost"
echo -e "  ${BOLD}Usuário:${NC}     ${ADMIN_EMAIL}"
echo -e "  ${BOLD}Senha:${NC}       ${YELLOW}${ADMIN_PASSWORD}${NC}"
echo ""
echo -e "  ${BOLD}Grafana:${NC}     https://localhost/grafana  (admin / ${GRAFANA_PASSWORD})"
echo -e "  ${BOLD}Adminer:${NC}     https://localhost/adminer  (DB: xdefense)"
echo -e "  ${BOLD}TAXII:${NC}       https://localhost/taxii2/"
echo ""
echo -e "  ${BOLD}Comandos úteis:${NC}"
echo -e "    make logs       # acompanha todos os logs"
echo -e "    make shell-db   # psql interativo"
echo -e "    ./setup.sh --reset   # regenera credenciais"
echo -e "    docker compose --profile ai up   # habilita Ollama + Open WebUI"
echo ""
echo -e "  ${YELLOW}Guarde a senha admin em local seguro. Ela não será exibida novamente.${NC}"
echo ""
