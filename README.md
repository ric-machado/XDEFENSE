# XDEFENSE

**Enterprise cybersecurity management platform — production-grade Docker stack built on XORCISM.**

[![Docker Compose](https://img.shields.io/badge/Docker-Compose_v2-2496ED?logo=docker)](docker-compose.yml)
[![Node.js](https://img.shields.io/badge/Node.js-20_LTS-339933?logo=nodedotjs)](xorcism_ts/)
[![Python](https://img.shields.io/badge/Python-3.11-3776AB?logo=python)](xorcism_python/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-336791?logo=postgresql)](postgres/)
[![Nginx](https://img.shields.io/badge/Nginx-1.27-009639?logo=nginx)](nginx/)

XDEFENSE is a fork of [XORCISM](https://github.com/xorcism/xorcism), wrapping the open-source cybersecurity platform in a production-grade Docker Compose stack: Nginx with SSL/HTTP2, PostgreSQL 16, Redis, RabbitMQ, PgBouncer, and full observability (Prometheus + Grafana + Loki + Tempo).

The application manages assets, vulnerabilities (CVE/NVD/EPSS/KEV), threats (STIX/TAXII), incidents, malware, compliance (NIST CSF, ISO 27001, CIS), MITRE ATT&CK/D3FEND/CAPEC, and computes a continuously-recomputed enterprise risk score — all in a self-hosted platform.

---

## Quick Start

```bash
git clone <this-repo> xdefense
cd xdefense
./scripts/setup.sh
```

Setup takes ~3 minutes. At the end, your admin credentials are printed to the terminal — save them, they will not be shown again.

Then open: **https://localhost**

> **First login:** the admin account requires a mandatory password change on first access. Enter the bootstrap credentials and follow the in-app prompt.

See [docs/INSTALL.md](docs/INSTALL.md) for full installation details, prerequisites, and production notes.

---

## Documentation

| Document | Description |
|---|---|
| [docs/INSTALL.md](docs/INSTALL.md) | Installation guide: prerequisites, automated setup, manual steps, first login |
| [docs/CONFIG.md](docs/CONFIG.md) | All environment variables and service configuration reference |
| [docs/OPERATIONS.md](docs/OPERATIONS.md) | Daily operations: health checks, logs, backup, restore, upgrade, monitoring |
| [API.md](API.md) | REST API reference (endpoints, authentication, webhooks) |
| [CONTRIBUTING.md](CONTRIBUTING.md) | Contributing guide (connector and importer development) |
| [docs/CONNECTORS.md](docs/CONNECTORS.md) | Security tool connector architecture (1,240 connectors across 104 categories) |
| [docs/DATABASE_BACKENDS.md](docs/DATABASE_BACKENDS.md) | Database engine documentation |
| [docs/DATABASE_BACKENDS_STAGE2.md](docs/DATABASE_BACKENDS_STAGE2.md) | Stage 2: Node.js migration plan to PostgreSQL |
| [agent/README.md](agent/README.md) | XOR endpoint agent capabilities |
| [agent/SETUP.md](agent/SETUP.md) | XOR agent installation guide |
| [mcp/README.md](mcp/README.md) | MCP server for Claude Desktop / Cursor |
| [playbooks/README.md](playbooks/README.md) | IR playbook library (42 playbooks) |

> Pre-fork XORCISM documentation (single-container, SQLite, Windows-first): [docs/legacy/](docs/legacy/)

---

## Architecture

```
Internet
    │
Nginx :80/:443  (HTTPS redirect, HTTP/2, Brotli, HSTS)
    │
    ├── /          → backend:9292    Node.js 20 · TypeScript · Express
    └── /taxii2/   → taxii:5000     Python 3.11 · Flask · STIX/TAXII 2.1

Node.js backend
    ├── Redis 7         sessions · cache · rate-limit (Phase 8)
    ├── RabbitMQ 3.13   job queue (Phase 7)
    ├── PgBouncer       connection pool → PostgreSQL
    └── PostgreSQL 16   13 security schemas (Phase 3)

Observability
    └── Prometheus → Grafana · Loki · Tempo

Optional (--profile ai)
    └── Ollama · Open WebUI
```

---

## Services

| Service | Image | Role |
|---|---|---|
| `nginx` | nginx:1.27-alpine | Reverse proxy, SSL/TLS termination, compression |
| `backend` | xdefense-backend | Main web application (Node.js 20 + TypeScript) |
| `postgres` | postgres:16 | Primary relational database (13 schemas) |
| `pgbouncer` | edoburu/pgbouncer | PostgreSQL connection pooler |
| `redis` | redis:7-alpine | Sessions, cache, rate-limiting |
| `rabbitmq` | rabbitmq:3.13-management | Async job queue |
| `taxii` | xdefense-taxii | STIX/TAXII 2.1 server and client |
| `connector-runner` | xdefense-connectors | Security tool connector executor |
| `python-worker` | xdefense-connectors | Import workers (NVD, ATT&CK, OVAL, Sigma...) |
| `scheduler` | xdefense-scheduler | Cron-based task scheduler |
| `adminer` | adminer | Database admin UI (via Nginx) |
| `backup` | xdefense-backup | Daily PostgreSQL dump with 7-day retention |
| `prometheus` | prom/prometheus | Metrics scraping and storage |
| `grafana` | grafana/grafana | Observability dashboards |
| `loki` | grafana/loki | Container log aggregation |
| `tempo` | grafana/tempo | Distributed tracing |

Optional (`--profile ai`): `ollama`, `open-webui`

---

## Modules

| Module | Description |
|---|---|
| Vulnerability Management | CVE/NVD, EPSS scores, CISA KEV, OVAL, Windows patches |
| Threat Intelligence | STIX 2.1 objects, IoCs, campaigns, TAXII feeds |
| Incident Management | PICERL lifecycle, tickets, playbooks |
| Malware Analysis | Sample tracking, YARA, family attribution |
| MITRE ATT&CK | Tactics, techniques, sub-techniques, mitigations |
| MITRE D3FEND | Defensive countermeasure mapping |
| Compliance | NIST CSF, ISO 27001, CIS Controls, EBIOS RM, NCA ECC |
| Asset Inventory | Hardware, software, network topology |
| Connectors | 1,240 security tools in 104 categories |
| Scheduler | On-demand and scheduled import jobs |
| Risk Score | Continuously-recomputed enterprise exposure index |

---

## Implementation Status (Phase 1 / 14 complete)

Phase 1 (Docker infrastructure) is complete. The infrastructure is production-ready; the application data layer migration is in progress.

| Phase | Description | Status |
|---|---|---|
| 1 | Docker Compose infrastructure (Nginx, Postgres, Redis, RabbitMQ, observability) | **Done** |
| 2 | Database abstraction layer (TypeScript adapter, engine switch) | Planned |
| 3 | PostgreSQL migration (DDL conversion, schemas, Flyway) | Planned |
| 4 | Data migration tool (SQLite → PostgreSQL) | Planned |
| 5 | Python / SQLAlchemy update (schemas) | Planned |
| 6 | Full containerization of all services | Planned |
| 7 | RabbitMQ job queue (async workers) | Planned |
| 8 | Redis sessions and cache | Planned |
| 9 | Security hardening | Planned |
| 10 | Full observability instrumentation | Planned |
| 11 | AI profile (Ollama, optional) | Planned |
| 12 | Automated setup refinement | Planned |
| 13 | Backup and restore automation | Planned |
| 14 | Admin CLI (`xdefense` tool) | Planned |

> **Current state:** The Node.js backend runs on SQLite. PostgreSQL is provisioned with 13 schemas and ready for Phase 3 migration. See [docs/DATABASE_BACKENDS_STAGE2.md](docs/DATABASE_BACKENDS_STAGE2.md).

---

## Security Notes

- `.env` is **never committed** — generated locally by `setup.sh` with cryptographically-random credentials
- SSL certificate is self-signed by default; see [docs/INSTALL.md](docs/INSTALL.md) for Let's Encrypt setup
- The bootstrap admin password is displayed once at install time and removed from disk
- Field-level encryption for sensitive data via `VAULT_KEY` (AES-256-GCM)

---

## License

XDEFENSE is a fork of [XORCISM](https://github.com/xorcism/xorcism), released under the [MIT License](LICENSE).
