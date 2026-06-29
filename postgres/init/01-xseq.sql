-- Tabela XSEQ — alocação atômica de PKs em todos os schemas.
-- Substitui allocId() com SQLite; usada pelo aplicativo para gerar IDs sem
-- depender de SERIAL/IDENTITY e manter compatibilidade com o código existente.

SET search_path = "xorcism", public;
CREATE TABLE IF NOT EXISTS XSEQ (SeqName TEXT PRIMARY KEY, Val INTEGER NOT NULL DEFAULT 0);

SET search_path = "xvulnerability", public;
CREATE TABLE IF NOT EXISTS XSEQ (SeqName TEXT PRIMARY KEY, Val INTEGER NOT NULL DEFAULT 0);

SET search_path = "xattack", public;
CREATE TABLE IF NOT EXISTS XSEQ (SeqName TEXT PRIMARY KEY, Val INTEGER NOT NULL DEFAULT 0);

SET search_path = "xmalware", public;
CREATE TABLE IF NOT EXISTS XSEQ (SeqName TEXT PRIMARY KEY, Val INTEGER NOT NULL DEFAULT 0);

SET search_path = "xincident", public;
CREATE TABLE IF NOT EXISTS XSEQ (SeqName TEXT PRIMARY KEY, Val INTEGER NOT NULL DEFAULT 0);

SET search_path = "xthreat", public;
CREATE TABLE IF NOT EXISTS XSEQ (SeqName TEXT PRIMARY KEY, Val INTEGER NOT NULL DEFAULT 0);

SET search_path = "xoval", public;
CREATE TABLE IF NOT EXISTS XSEQ (SeqName TEXT PRIMARY KEY, Val INTEGER NOT NULL DEFAULT 0);

SET search_path = "xwindows", public;
CREATE TABLE IF NOT EXISTS XSEQ (SeqName TEXT PRIMARY KEY, Val INTEGER NOT NULL DEFAULT 0);

SET search_path = "xcompliance", public;
CREATE TABLE IF NOT EXISTS XSEQ (SeqName TEXT PRIMARY KEY, Val INTEGER NOT NULL DEFAULT 0);

SET search_path = "xticket", public;
CREATE TABLE IF NOT EXISTS XSEQ (SeqName TEXT PRIMARY KEY, Val INTEGER NOT NULL DEFAULT 0);

SET search_path = "xid", public;
CREATE TABLE IF NOT EXISTS XSEQ (SeqName TEXT PRIMARY KEY, Val INTEGER NOT NULL DEFAULT 0);

SET search_path = "xjob", public;
CREATE TABLE IF NOT EXISTS XSEQ (SeqName TEXT PRIMARY KEY, Val INTEGER NOT NULL DEFAULT 0);

SET search_path = "xagent", public;
CREATE TABLE IF NOT EXISTS XSEQ (SeqName TEXT PRIMARY KEY, Val INTEGER NOT NULL DEFAULT 0);
