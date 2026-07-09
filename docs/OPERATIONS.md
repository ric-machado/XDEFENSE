# XDEFENSE — Operations Guide

Reference for day-to-day operation of the XDEFENSE stack.

---

## Quick Reference

```bash
make help          # show all available make targets
./scripts/xdefense help   # show CLI commands
```

---

## Starting and Stopping

### Start the full stack

```bash
make up
# or
docker compose up -d
```

### Start with AI (Ollama + Open WebUI)

```bash
make up-ai
# or
docker compose --profile ai up -d
```

### Stop all containers (preserve data)

```bash
make down
# or
docker compose down
```

### Restart all containers

```bash
make restart
# or
docker compose restart
```

### Restart a single service

```bash
docker compose restart backend
docker compose restart nginx
docker compose restart postgres
```

---

## Health Checks

### Quick status

```bash
make ps
# or
docker compose ps
```

### Full diagnostic

```bash
make doctor
# or
./scripts/xdefense doctor
```

Checks: container health, HTTP responses from Nginx/backend/TAXII, PostgreSQL `pg_isready`.

### Individual health checks

```bash
# Nginx
curl -sk https://localhost/health

# Backend
curl -sk https://localhost/login -o /dev/null -w "%{http_code}"

# TAXII discovery
curl -sk https://localhost/taxii2/

# PostgreSQL
docker compose exec postgres pg_isready -U postgres -d xdefense

# Redis
docker compose exec redis redis-cli -a "$REDIS_PASSWORD" ping
```

---

## Logs

### Follow all services

```bash
make logs
# or
docker compose logs -f --tail=100
```

### Single service

```bash
make logs-backend
# or
docker compose logs -f --tail=100 backend
docker compose logs -f --tail=50 postgres
docker compose logs -f --tail=50 nginx
docker compose logs -f --tail=50 rabbitmq
```

### Via CLI

```bash
./scripts/xdefense logs backend
./scripts/xdefense logs postgres
./scripts/xdefense logs              # all services
```

### Search logs

```bash
docker compose logs backend 2>&1 | grep -i error
docker compose logs backend 2>&1 | grep "listening on port"
```

---

## Database Access

### Interactive psql

```bash
make shell-db
# or
docker compose exec postgres psql -U postgres -d xdefense
```

### List schemas

```bash
make schemas
# psql: \dn
```

### List tables in a schema

```bash
make tables SCHEMA=xvulnerability
# psql: \dt xvulnerability.*
```

### Count rows

```bash
docker compose exec postgres psql -U postgres -d xdefense \
  -c "SELECT count(*) FROM xvulnerability.\"VULNERABILITY\""
```

### Run a SQL file

```bash
docker compose exec -T postgres psql -U postgres -d xdefense \
  < path/to/script.sql
```

---

## Shell Access

### Backend container

```bash
make shell-backend
# or
docker compose exec backend sh
```

### Python/connector container

```bash
make shell-python
# or
docker compose exec connector-runner bash
```

### PostgreSQL container

```bash
docker compose exec postgres bash
```

---

## Backup

### Manual backup

```bash
make backup
# or
./scripts/xdefense backup
```

Runs `pg_dump -Fc xdefense` inside the backup container. Dumps are saved to the `backup-data` volume with timestamped filenames: `xdefense_YYYYMMDD_HHMMSS.dump`.

### Automatic backup

The `backup` container runs a cron job daily at 02:00 (UTC). Retention is 7 days by default (configured in `Dockerfile.backup` via `BACKUP_RETENTION_DAYS`).

### List existing backups

```bash
docker compose exec backup ls -lh /backups/
```

### Restore from backup

```bash
make restore FILE=xdefense_20250101_020000.dump
# or
./scripts/xdefense restore --file xdefense_20250101_020000.dump
```

The restore runs `pg_restore -c` (clean + restore) against the `xdefense` database, then you should restart the services:

```bash
make restart
```

> **Note:** Restore overwrites the entire database. Stop the backend and worker services first to avoid writes during restore:
> ```bash
> docker compose stop backend scheduler connector-runner python-worker
> make restore FILE=<filename>
> make restart
> ```

---

## Upgrading

### Update base images and rebuild

```bash
make update
# or
./scripts/xdefense upgrade
```

This runs `docker compose pull` (base images), `docker compose build --no-cache` (application images), then `docker compose up -d`.

### Rebuild only application images

```bash
make build
# then
make up
```

---

## Data Imports

Run via the CLI or directly via `docker compose exec`:

```bash
./scripts/xdefense import attack    # MITRE ATT&CK tactics and techniques
./scripts/xdefense import sigma     # Sigma detection rules
./scripts/xdefense import cve       # NVD CVE full feed
./scripts/xdefense import kev       # CISA Known Exploited Vulnerabilities
./scripts/xdefense import d3fend    # MITRE D3FEND countermeasures
```

Imports run inside the `python-worker` container. Logs are available via `make logs` filtered on `python-worker`.

---

## Credentials Reset

### Regenerate all credentials and restart

```bash
./scripts/setup.sh --reset
```

This generates new passwords for PostgreSQL, Redis, RabbitMQ, Grafana, TAXII, session secret, and vault key. It rewrites `.env`, regenerates the SSL certificate, rebuilds images, and restarts the stack.

> **Warning:** After `--reset`, all existing sessions are invalidated and any external integrations using the old credentials must be updated. The vault key change also makes previously-encrypted fields unreadable.

---

## Monitoring

### Prometheus

Prometheus scrapes metrics from all services and is available internally. To access:

```bash
docker compose exec prometheus wget -qO- http://localhost:9090/-/ready
```

Target status:
```bash
curl http://localhost:9090/api/v1/targets 2>/dev/null | python3 -m json.tool | grep -A2 '"health"'
```

### Grafana

Access at: **https://localhost/grafana**  
Default credentials: `admin` / (from `GRAFANA_PASSWORD` in `.env`)

Pre-provisioned data sources: Prometheus, Loki, Tempo.

### Adminer (Database UI)

Access at: **https://localhost/adminer**  
Connect with: System=PostgreSQL, Server=postgres, Username=postgres, Password=(from `.env`), Database=xdefense.

### TAXII Discovery

```bash
curl -sk -u admin:$TAXII_PASSWORD https://localhost/taxii2/
```

Returns the TAXII discovery document listing available API roots.

---

## Common Maintenance Tasks

### Check disk usage

```bash
docker system df
docker volume ls
```

### View PostgreSQL active connections

```bash
docker compose exec postgres psql -U postgres -d xdefense \
  -c "SELECT count(*) FROM pg_stat_activity WHERE datname = 'xdefense'"
```

### Check RabbitMQ queue depths

```bash
docker compose exec rabbitmq rabbitmqctl list_queues name messages consumers
```

### View Redis memory

```bash
docker compose exec redis redis-cli -a "$REDIS_PASSWORD" info memory | grep used_memory_human
```

### Prune unused Docker resources

```bash
docker system prune          # removes stopped containers and dangling images
docker system prune -a       # also removes unused images (frees more space)
```

> This does **not** delete named volumes (your data).

---

## Cleaning Up

### Remove containers only (keep volumes = keep data)

```bash
make down
# or
docker compose down
```

### Remove containers and all data (irreversible)

```bash
make clean-volumes-confirm
# or
docker compose down -v
```

### Remove locally-built images

```bash
make clean
```

---

## Troubleshooting Reference

| Symptom | Diagnosis | Fix |
|---|---|---|
| Backend exits immediately | glibc/native addon ABI mismatch | Use `Dockerfile.sandbox-backend` (recompiles `better-sqlite3`) |
| Nginx 502 | Backend not ready | `docker compose logs backend` — wait for "listening on port 9292" |
| Redis permission denied | Stale volume directory | `docker volume rm xdefense_redis-data` then restart Redis |
| Loki permission denied | Non-root process can't create `/wal` | Add `user: root` to loki in `docker-compose.override.yml` |
| RabbitMQ health failing | Management plugin not ready | Use HTTP healthcheck on port 15672 instead of `rabbitmq-diagnostics` |
| Nginx socket error `[::]:80` | IPv6 not available | Comment out `listen [::]:80` in `nginx/nginx.conf` |
| TAXII healthcheck 401 | Auth required on health endpoint | Use `wget -S` and grep for `HTTP 2xx/4xx` not just exit code |
| `pg_isready` fails | PostgreSQL still starting | Wait 60s; check disk space and `docker compose logs postgres` |
| Missing admin password | Bootstrap file already consumed | Check `docker compose logs backend \| grep -A2 COMPTE` |
