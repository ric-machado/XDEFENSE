"""
XDEFENSE Configuration
"""
import logging
import os
import urllib.parse

_log = logging.getLogger("xdefense.config")

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

# ── Diretório SQLite (legado, usado quando DB_ENGINE=sqlite) ──────────────────
DB_DIR = os.getenv("DB_DIR", "/data")

# ── Engine selecionada ────────────────────────────────────────────────────────
# sqlite   — arquivos individuais em DB_DIR (padrão)
# postgres — banco único xdefense com 13 schemas via PostgreSQL
DB_ENGINE = os.getenv("XDEFENSE_DB_ENGINE", "sqlite").strip().lower()

if DB_ENGINE in ("postgres", "postgresql"):
    _log.warning(
        "XDEFENSE_DB_ENGINE=%s: o lado Python (importers/connectors/TAXII) vai gravar "
        "em PostgreSQL, mas o servidor Node (xorcism_ts) ainda le/grava SQLite/libSQL "
        "independentemente desta variavel (Stage 2 / Route C pendente — ver "
        "docs/DATABASE_BACKENDS_STAGE2.md). Os dados gravados pelo Python NAO aparecerao "
        "na interface web ate essa migracao ser concluida.",
        DB_ENGINE,
    )

# ── 13 schemas lógicos do XDEFENSE ───────────────────────────────────────────
LOGICAL_SCHEMAS = [
    "xorcism", "xvulnerability", "xattack", "xmalware", "xincident", "xthreat",
    "xoval", "xwindows", "xcompliance", "xticket", "xid", "xjob", "xagent",
]

# Mapeamento schema → nome do arquivo SQLite (sem .db)
SQLITE_FILES: dict[str, str] = {
    "xorcism":        "XORCISM",
    "xvulnerability": "XVULNERABILITY",
    "xattack":        "XATTACK",
    "xmalware":       "XMALWARE",
    "xincident":      "XINCIDENT",
    "xthreat":        "XTHREAT",
    "xoval":          "XOVAL",
    "xwindows":       "XWINDOWS",
    "xcompliance":    "XCOMPLIANCE",
    "xticket":        "XTICKET",
    "xid":            "XID",
    "xjob":           "XJOB",
    "xagent":         "XAGENT",
}

# ── Compatibilidade com código legado (LOGICAL_DBS → LOGICAL_SCHEMAS) ─────────
LOGICAL_DBS = [s.upper() for s in LOGICAL_SCHEMAS]


# ── PostgreSQL ────────────────────────────────────────────────────────────────

def _pg_base_url() -> str:
    host = os.getenv("POSTGRES_HOST", "postgres")
    port = os.getenv("POSTGRES_PORT", "5432")
    db   = os.getenv("POSTGRES_DB", "xdefense")
    user = urllib.parse.quote_plus(os.getenv("POSTGRES_APP_USER", "xdefense_app"))
    pw   = urllib.parse.quote_plus(os.getenv("POSTGRES_APP_PASSWORD", ""))
    return f"postgresql+psycopg2://{user}:{pw}@{host}:{port}/{db}"


def database_url(schema: str) -> str:
    """SQLAlchemy URL para um schema lógico."""
    s = schema.lower()
    if DB_ENGINE in ("postgres", "postgresql"):
        return _pg_base_url()
    # SQLite: um arquivo por schema
    sqlite_file = SQLITE_FILES.get(s, s.upper())
    return f"sqlite:///{os.path.join(DB_DIR, sqlite_file + '.db')}"


def connect_args(schema: str) -> dict:
    """Argumentos de conexão SQLAlchemy para o schema indicado."""
    s = schema.lower()
    if DB_ENGINE in ("postgres", "postgresql"):
        return {"options": f"-csearch_path={s},public"}
    return {"check_same_thread": False, "timeout": 15}


# DATABASES: mapeamento schema → URL (para compatibilidade com code existente)
DATABASES = {s: database_url(s) for s in LOGICAL_SCHEMAS}

# Compatibilidade: código legado usava DATABASES["XORCISM"] (uppercase)
DATABASES.update({s.upper(): database_url(s) for s in LOGICAL_SCHEMAS})

# ── Email ─────────────────────────────────────────────────────────────────────
SMTP_SERVER   = os.getenv("SMTP_SERVER",   "smtp.example.com")
SMTP_PORT     = int(os.getenv("SMTP_PORT", "587"))
SMTP_USERNAME = os.getenv("SMTP_USERNAME", "")
SMTP_PASSWORD = os.getenv("SMTP_PASSWORD", "")
SMTP_FROM     = os.getenv("SMTP_FROM", "contact@xdefense.local")

# ── Logging ───────────────────────────────────────────────────────────────────
LOG_LEVEL = os.getenv("LOG_LEVEL", "INFO")
