# XDEFENSE — Installation Guide

This guide covers all paths to get XDEFENSE running: the automated one-command setup, a manual step-by-step path for debugging, and notes for production hardening.

---

## Prerequisites

| Requirement | Minimum | Notes |
|---|---|---|
| Docker | 24.0+ | `docker --version` |
| Docker Compose | v2.20+ (plugin) | `docker compose version` |
| OpenSSL | any recent | `openssl version` — used for credential generation and SSL cert |
| RAM | 4 GB available | PostgreSQL + RabbitMQ + Node.js all running simultaneously |
| Disk | 20 GB free | Images (~3 GB) + data volumes + logs |
| CPU | 2 cores | 4+ recommended |

The automated setup runs on **Linux** and **macOS**. Windows users should run inside WSL 2 with Docker Desktop.

---

## Automated Setup (Recommended)

```bash
git clone <repository-url> xdefense
cd xdefense
./scripts/setup.sh
```

The script runs these steps automatically:

1. Verifies Docker, Docker Compose, and OpenSSL are installed
2. Generates all credentials (PostgreSQL, Redis, RabbitMQ, session secret, vault key, TAXII, Grafana) using `openssl rand` — no user input required
3. Writes `.env` in the project root (never committed to git)
4. Generates a self-signed TLS certificate valid for 365 days (`nginx/ssl/xdefense.crt`)
5. Builds all Docker images from source
6. Starts the infrastructure tier first (postgres, redis, rabbitmq) and waits for health checks
7. Starts all remaining services
8. Waits for the backend to become ready
9. Reads the bootstrap admin credentials from the backend's first-boot file
10. Runs validation checks (Nginx, backend, TAXII, PostgreSQL)
11. Prints your admin credentials and useful commands

At the end, you will see:

```
╔══════════════════════════════════════════════════════════╗
║          XDEFENSE instalado com sucesso!                  ║
╚══════════════════════════════════════════════════════════╝

  URL:         https://localhost
  Usuário:     admin@xorcism.local
  Senha:       <generated-password>

  Grafana:     https://localhost/grafana  (admin / <password>)
  Adminer:     https://localhost/adminer
  TAXII:       https://localhost/taxii2/
```

**The admin password is displayed exactly once and is not stored anywhere.** Save it in a password manager immediately.

### Re-running setup

If `.env` already exists, `setup.sh` preserves it. To regenerate all credentials:

```bash
./scripts/setup.sh --reset
```

> This generates new passwords and **overwrites `.env`**. You will need to update any external integrations that store the old credentials.

---

## First Login

1. Open **https://localhost** in your browser
2. Accept the self-signed certificate warning
3. Enter the admin email and password shown by `setup.sh`
4. You will be prompted to change the password (mandatory on first login)
   - Minimum 12 characters
   - Must contain at least 3 of: lowercase, uppercase, digit, symbol
5. After the change, you are redirected to the dashboard

---

## Manual Setup (Step by Step)

Use this path if `setup.sh` fails or you need to customize each step.

### 1. Create `.env`

```bash
cp .env.example .env
```

Edit `.env` and replace every `CHANGE_ME_*` placeholder with a strong random value:

```bash
# Generate a strong password
openssl rand -base64 48 | tr -dc 'a-zA-Z0-9!@#%^*' | head -c 40

# Generate a hex secret
openssl rand -hex 48
```

See [docs/CONFIG.md](CONFIG.md) for a full description of every variable.

### 2. Generate SSL Certificate

```bash
mkdir -p nginx/ssl
openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
    -keyout nginx/ssl/xdefense.key \
    -out nginx/ssl/xdefense.crt \
    -subj "/C=BR/O=XDEFENSE/CN=localhost" \
    -addext "subjectAltName=DNS:localhost,IP:127.0.0.1"
chmod 600 nginx/ssl/xdefense.key
```

### 3. Build Images

```bash
docker compose build
```

Or rebuild without cache:

```bash
make build
```

### 4. Start Infrastructure First

```bash
docker compose up -d postgres redis rabbitmq

# Wait for health checks (up to ~2 minutes)
docker compose ps
```

Wait until postgres, redis, and rabbitmq all show `healthy` in `docker compose ps` output.

### 5. Start All Services

```bash
docker compose up -d
```

### 6. Verify

```bash
make doctor
```

Expected output:
```
[xdefense] postgres → healthy
[xdefense] redis → healthy
[xdefense] rabbitmq → healthy
[xdefense] backend → healthy
[xdefense] nginx → healthy
[xdefense] nginx /health → HTTP 200
[xdefense] backend /login → HTTP 200
[xdefense] taxii discovery → HTTP 200
```

---

## Sandbox / CCR Environment

When running in a container-based cloud environment (e.g., Claude Code Remote), `docker-compose.override.yml` is auto-loaded and applies these adjustments:

- Backend and scheduler use `Dockerfile.sandbox-*` variants that skip `npm ci` (pre-built assets from host)
- Connector and taxii images build with `--network=host` to reach pip/apt through the environment's proxy
- Loki and Tempo run as root to avoid volume permission issues
- Adminer is forced to IPv4

The override file is committed in the repository and applied automatically. No manual action is needed.

---

## Production Deployment

### Replace the Self-Signed Certificate

With Let's Encrypt (Certbot):

```bash
# Install Certbot on the host
certbot certonly --standalone -d yourdomain.example.com

# Copy certificates
cp /etc/letsencrypt/live/yourdomain.example.com/fullchain.pem nginx/ssl/xdefense.crt
cp /etc/letsencrypt/live/yourdomain.example.com/privkey.pem nginx/ssl/xdefense.key

# Update XORCISM_BASE_URL in .env
XORCISM_BASE_URL=https://yourdomain.example.com

# Restart Nginx
docker compose restart nginx
```

### Use Docker Secrets for Credentials

Phase 9 introduces Docker Secrets for production deployments. Until then, ensure `.env` has restrictive permissions:

```bash
chmod 600 .env
```

### Firewall

Only ports 80 and 443 should be publicly accessible. All other ports (5432, 6379, 5672, etc.) are on internal Docker networks.

### Resource Limits

The `docker-compose.yml` includes resource limits. Review and adjust for your hardware:

```yaml
backend:
  deploy:
    resources:
      limits:
        cpus: "2"
        memory: 2G
postgres:
  deploy:
    resources:
      limits:
        cpus: "4"
        memory: 4G
```

### Disable Registration

By default, self-registration is disabled (`XORCISM_ALLOW_REGISTER=0` in `.env`). Keep it disabled in production unless you need open registration.

---

## Troubleshooting

### Container fails to start

```bash
docker compose logs <service-name>
```

### Backend returns 502

The backend might still be initializing. Check:

```bash
docker compose logs backend --tail=30
```

Look for `[server] listening on port 9292`.

### Nginx IPv6 error (`socket() [::]:80 failed`)

If your environment does not support IPv6, comment out the IPv6 `listen` directives in `nginx/nginx.conf`:

```nginx
# listen [::]:80;
# listen [::]:443 ssl;
```

Then restart: `docker compose restart nginx`

### PostgreSQL not ready

```bash
docker compose exec postgres pg_isready -U postgres -d xdefense
```

If it fails, check available disk space and the logs:

```bash
docker compose logs postgres
```

### Redis permission error

If Redis fails with `appendonlydir: Permission denied`, the volume has a stale directory. Remove it and restart:

```bash
docker compose stop redis
docker volume rm xdefense_redis-data
docker compose up -d redis
```

### better-sqlite3 GLIBC error

If the backend logs `GLIBC_2.38 not found`, the pre-built native module is incompatible with the container's glibc. Use `Dockerfile.sandbox-backend` (included in `docker-compose.override.yml`) which recompiles `better-sqlite3` inside the container.

### Grafana redirect loop

Grafana's sub-path configuration (`/grafana/`) can cause 301 loops on first access. This is a known issue tracked for Phase 10 observability refinement. Grafana is accessible directly via internal Docker networking.

---

## Uninstall

```bash
# Stop and remove containers
docker compose down

# Also remove all data volumes (irreversible)
make clean-volumes-confirm

# Remove built images
make clean
```
