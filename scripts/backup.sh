#!/usr/bin/env sh
# XDEFENSE — Backup automático (executado pelo container backup via cron)
set -eu

BACKUP_DIR="/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/xdefense_${TIMESTAMP}.dump"
RETENTION_DAYS="${BACKUP_RETENTION_DAYS:-30}"

echo "[backup] $(date -u) — Iniciando backup"

# Dump PostgreSQL
pg_dump -h "${POSTGRES_HOST:-postgres}" -U postgres \
    --format=custom --compress=9 \
    -f "$BACKUP_FILE" \
    xdefense 2>&1

echo "[backup] Dump salvo: $BACKUP_FILE ($(du -h "$BACKUP_FILE" | cut -f1))"

# Remover backups antigos
find "$BACKUP_DIR" -name "xdefense_*.dump" -mtime "+${RETENTION_DAYS}" -delete
REMAINING=$(find "$BACKUP_DIR" -name "xdefense_*.dump" | wc -l)
echo "[backup] Backups retidos: $REMAINING (máx ${RETENTION_DAYS} dias)"

echo "[backup] $(date -u) — Concluído."
