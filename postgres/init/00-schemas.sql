-- XDEFENSE — Inicialização do banco PostgreSQL
-- Fase 1: Cria os 13 schemas. DDL das tabelas adicionado na Fase 3.
-- Executado automaticamente pelo postgres:16 na primeira inicialização.

-- Extensões necessárias
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pg_trgm";   -- busca textual fuzzy nos campos de ameaça/CVE

-- ── 13 Schemas ────────────────────────────────────────────────────────────────
CREATE SCHEMA IF NOT EXISTS xorcism;        -- plataforma principal (1.607 tabelas)
CREATE SCHEMA IF NOT EXISTS xvulnerability; -- CVE, CVSS, EPSS, NVD, KEV
CREATE SCHEMA IF NOT EXISTS xattack;        -- MITRE ATT&CK, CAPEC
CREATE SCHEMA IF NOT EXISTS xmalware;       -- MAEC 5.0, amostras, hashes
CREATE SCHEMA IF NOT EXISTS xincident;      -- gestão de incidentes, DORA/NIS2
CREATE SCHEMA IF NOT EXISTS xthreat;        -- atores, campanhas, CTI, STIX
CREATE SCHEMA IF NOT EXISTS xoval;          -- definições OVAL/SCAP
CREATE SCHEMA IF NOT EXISTS xwindows;       -- baselines Windows (CybOX)
CREATE SCHEMA IF NOT EXISTS xcompliance;    -- GRC, CSF, DORA, NIS2, GDPR, CRA
CREATE SCHEMA IF NOT EXISTS xticket;        -- ticketing e workflow
CREATE SCHEMA IF NOT EXISTS xid;            -- identidade, sessões, RBAC, WebAuthn
CREATE SCHEMA IF NOT EXISTS xjob;           -- fila de jobs (→ RabbitMQ na Fase 7)
CREATE SCHEMA IF NOT EXISTS xagent;         -- registro de agentes endpoint XOR

-- ── Role da aplicação (criada na Fase 3 com permissões completas) ─────────────
-- O bloco abaixo é idempotente via DO $$ ... END $$
DO $$
BEGIN
    IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'xdefense_app') THEN
        CREATE ROLE xdefense_app LOGIN;
    END IF;
END
$$;

-- Permissões básicas no banco
GRANT CONNECT ON DATABASE xdefense TO xdefense_app;

-- Permissão de uso nos 13 schemas
GRANT USAGE ON SCHEMA
    xorcism, xvulnerability, xattack, xmalware, xincident, xthreat,
    xoval, xwindows, xcompliance, xticket, xid, xjob, xagent
TO xdefense_app;

-- Permissão futura: quando as tabelas forem criadas na Fase 3, executar:
--   GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA <schema> TO xdefense_app;
--   ALTER DEFAULT PRIVILEGES IN SCHEMA <schema> GRANT ALL ON TABLES TO xdefense_app;
