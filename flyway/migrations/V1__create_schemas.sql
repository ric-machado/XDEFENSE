-- Flyway migration V1 — Criação dos 13 schemas XDEFENSE
-- Este arquivo é o ponto de partida do versionamento de schema.
-- Executado pelo container Flyway durante setup e upgrades.

CREATE SCHEMA IF NOT EXISTS xorcism;
CREATE SCHEMA IF NOT EXISTS xvulnerability;
CREATE SCHEMA IF NOT EXISTS xattack;
CREATE SCHEMA IF NOT EXISTS xmalware;
CREATE SCHEMA IF NOT EXISTS xincident;
CREATE SCHEMA IF NOT EXISTS xthreat;
CREATE SCHEMA IF NOT EXISTS xoval;
CREATE SCHEMA IF NOT EXISTS xwindows;
CREATE SCHEMA IF NOT EXISTS xcompliance;
CREATE SCHEMA IF NOT EXISTS xticket;
CREATE SCHEMA IF NOT EXISTS xid;
CREATE SCHEMA IF NOT EXISTS xjob;
CREATE SCHEMA IF NOT EXISTS xagent;

-- Extensões
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pg_trgm";
