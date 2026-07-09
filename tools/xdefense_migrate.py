"""
xdefense_migrate.py — migra os bancos SQLite do XORCISM para os schemas PostgreSQL do XDEFENSE.

Fonte:  13 arquivos SQLite individuais em DB_DIR (ex: XORCISM.db, XVULNERABILITY.db...)
Destino: banco único PostgreSQL "xdefense" com 13 schemas (xorcism, xvulnerability...)

Uso:
    python tools/xdefense_migrate.py [--only SCHEMA,...] [--dry-run] [--batch-size N]
    python tools/xdefense_migrate.py --validate-only        # apenas compara contagens
    python tools/xdefense_migrate.py --only xorcism,xid     # migra apenas schemas selecionados

Variáveis de ambiente (mesmas do docker-compose/.env):
    DB_DIR                  diretório com os .db SQLite   (padrão: /data)
    POSTGRES_HOST           host do PostgreSQL            (padrão: postgres)
    POSTGRES_PORT           porta                         (padrão: 5432)
    POSTGRES_DB             nome do banco                 (padrão: xdefense)
    POSTGRES_APP_USER       usuário                       (padrão: xdefense_app)
    POSTGRES_APP_PASSWORD   senha
"""
from __future__ import annotations

import argparse
import json
import os
import sqlite3
import sys
import time
from datetime import datetime, timezone
from typing import Any

# ── Mapeamento schema_name → SQLite filename ──────────────────────────────────

SCHEMA_MAP: dict[str, str] = {
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

ALL_SCHEMAS = list(SCHEMA_MAP.keys())

# ── Conexão PostgreSQL ────────────────────────────────────────────────────────

def _pg_connect(schema: str):
    try:
        import psycopg2  # type: ignore
        import psycopg2.extras  # type: ignore
    except ImportError:
        sys.exit("[migrate] psycopg2-binary não encontrado. Execute: pip install psycopg2-binary")

    conn = psycopg2.connect(
        host=os.getenv("POSTGRES_HOST", "postgres"),
        port=int(os.getenv("POSTGRES_PORT", "5432")),
        dbname=os.getenv("POSTGRES_DB", "xdefense"),
        user=os.getenv("POSTGRES_APP_USER", "xdefense_app"),
        password=os.getenv("POSTGRES_APP_PASSWORD", ""),
    )
    conn.autocommit = False
    with conn.cursor() as cur:
        cur.execute(f'SET search_path = "{schema}", public')
    return conn


def _pg_tables(conn) -> set[str]:
    with conn.cursor() as cur:
        cur.execute("""
            SELECT table_name FROM information_schema.tables
            WHERE table_schema = current_schema() AND table_type = 'BASE TABLE'
        """)
        return {row[0].upper() for row in cur.fetchall()}


def _pg_count(conn, table: str) -> int:
    with conn.cursor() as cur:
        cur.execute(f'SELECT COUNT(*) FROM "{table}"')
        return cur.fetchone()[0]  # type: ignore[index]


# ── Conexão SQLite ────────────────────────────────────────────────────────────

def _sqlite_connect(schema: str) -> sqlite3.Connection | None:
    db_dir = os.getenv("DB_DIR", "/data")
    filename = SCHEMA_MAP[schema]
    path = os.path.join(db_dir, filename + ".db")
    if not os.path.exists(path):
        return None
    conn = sqlite3.connect(path)
    conn.row_factory = sqlite3.Row
    return conn


def _sqlite_tables(conn: sqlite3.Connection) -> list[str]:
    cur = conn.execute("SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%' ORDER BY name")
    return [row[0] for row in cur.fetchall()]


def _sqlite_columns(conn: sqlite3.Connection, table: str) -> list[str]:
    cur = conn.execute(f"PRAGMA table_info('{table}')")
    return [row[1] for row in cur.fetchall()]


def _sqlite_count(conn: sqlite3.Connection, table: str) -> int:
    cur = conn.execute(f'SELECT COUNT(*) FROM "{table}"')
    return cur.fetchone()[0]  # type: ignore[index]


# ── Migração de uma tabela ────────────────────────────────────────────────────

def migrate_table(
    sqlite_conn: sqlite3.Connection,
    pg_conn,
    table: str,
    pg_tables: set[str],
    batch_size: int,
    dry_run: bool,
) -> dict[str, Any]:
    cols = _sqlite_columns(sqlite_conn, table)
    sqlite_rows = _sqlite_count(sqlite_conn, table)

    if sqlite_rows == 0:
        return {"table": table, "rows": 0, "skipped": "empty"}

    if table.upper() not in pg_tables:
        return {"table": table, "rows": 0, "skipped": "not_in_postgres"}

    if dry_run:
        return {"table": table, "rows": sqlite_rows, "dry_run": True}

    # Apaga dados existentes no destino antes de copiar
    import psycopg2.extras  # type: ignore
    with pg_conn.cursor() as cur:
        cur.execute(f'DELETE FROM "{table}"')

    col_list = ", ".join(f'"{c}"' for c in cols)
    placeholders = ", ".join(["%s"] * len(cols))
    sql = f'INSERT INTO "{table}" ({col_list}) VALUES ({placeholders}) ON CONFLICT DO NOTHING'

    copied = 0
    offset = 0
    while True:
        rows = sqlite_conn.execute(
            f'SELECT {", ".join(f"""{chr(34)}{c}{chr(34)}""" for c in cols)} FROM "{table}" LIMIT {batch_size} OFFSET {offset}'
        ).fetchall()
        if not rows:
            break
        batch = [tuple(row) for row in rows]
        with pg_conn.cursor() as cur:
            psycopg2.extras.execute_values(cur, sql.replace("VALUES (%s)" if len(cols) == 1 else "", "VALUES %s") if False else sql, batch, page_size=batch_size)
        copied += len(batch)
        offset += batch_size

    pg_conn.commit()

    pg_count = _pg_count(pg_conn, table)
    ok = pg_count >= copied
    return {
        "table": table,
        "rows_source": sqlite_rows,
        "rows_copied": copied,
        "rows_dest": pg_count,
        "ok": ok,
    }


# ── Migração de um schema ─────────────────────────────────────────────────────

def migrate_schema(
    schema: str,
    batch_size: int,
    dry_run: bool,
    validate_only: bool,
) -> dict[str, Any]:
    t0 = time.monotonic()
    result: dict[str, Any] = {"schema": schema, "tables": []}

    sqlite_conn = _sqlite_connect(schema)
    if sqlite_conn is None:
        result["skipped"] = "sqlite_file_not_found"
        return result

    try:
        pg_conn = _pg_connect(schema)
    except Exception as e:
        result["error"] = f"postgres_connect: {e}"
        return result

    try:
        sqlite_tables = _sqlite_tables(sqlite_conn)
        pg_tables = _pg_tables(pg_conn)

        if validate_only:
            for table in sqlite_tables:
                sc = _sqlite_count(sqlite_conn, table)
                if table.upper() not in pg_tables:
                    result["tables"].append({"table": table, "source": sc, "dest": None, "ok": False})
                    continue
                pc = _pg_count(pg_conn, table)
                result["tables"].append({"table": table, "source": sc, "dest": pc, "ok": sc == pc})
        else:
            for table in sqlite_tables:
                tr = migrate_table(sqlite_conn, pg_conn, table, pg_tables, batch_size, dry_run)
                result["tables"].append(tr)

    finally:
        sqlite_conn.close()
        pg_conn.close()

    elapsed = time.monotonic() - t0
    result["elapsed_sec"] = round(elapsed, 2)

    total_rows = sum(
        t.get("rows_copied", t.get("rows", 0)) for t in result["tables"]
        if not t.get("skipped")
    )
    errors = [t for t in result["tables"] if t.get("ok") is False]
    result["total_rows"] = total_rows
    result["errors"] = len(errors)
    return result


# ── Main ──────────────────────────────────────────────────────────────────────

def main() -> int:
    ap = argparse.ArgumentParser(
        description="Migra SQLite XORCISM → PostgreSQL XDEFENSE (schemas)"
    )
    ap.add_argument("--only", default="", help="schemas separados por vírgula (padrão: todos)")
    ap.add_argument("--batch-size", type=int, default=1000, metavar="N")
    ap.add_argument("--dry-run", action="store_true", help="reflete e conta; não copia dados")
    ap.add_argument("--validate-only", action="store_true", help="compara contagens sem copiar")
    ap.add_argument("--report", default="", metavar="FILE", help="salva relatório JSON neste arquivo")
    args = ap.parse_args()

    schemas = (
        [s.strip().lower() for s in args.only.split(",") if s.strip()]
        if args.only else ALL_SCHEMAS
    )
    unknown = [s for s in schemas if s not in SCHEMA_MAP]
    if unknown:
        ap.error(f"schemas desconhecidos: {unknown}. Válidos: {ALL_SCHEMAS}")

    mode = "validate-only" if args.validate_only else ("dry-run" if args.dry_run else "migração")
    print(f"[migrate] {mode} | {len(schemas)} schema(s): {', '.join(schemas)}")
    print(f"[migrate] batch-size={args.batch_size} | DB_DIR={os.getenv('DB_DIR', '/data')}")
    print(f"[migrate] destino: {os.getenv('POSTGRES_APP_USER','xdefense_app')}@"
          f"{os.getenv('POSTGRES_HOST','postgres')}:{os.getenv('POSTGRES_PORT','5432')}/"
          f"{os.getenv('POSTGRES_DB','xdefense')}")
    print()

    report: dict[str, Any] = {
        "started_at": datetime.now(timezone.utc).isoformat(),
        "mode": mode,
        "schemas": [],
    }

    total_rows = total_err = 0
    for schema in schemas:
        r = migrate_schema(schema, args.batch_size, args.dry_run, args.validate_only)
        report["schemas"].append(r)

        if r.get("skipped"):
            print(f"  - {schema}: ignorado ({r['skipped']})")
            continue
        if r.get("error"):
            print(f"  ! {schema}: erro — {r['error']}")
            total_err += 1
            continue

        errs = r.get("errors", 0)
        rows = r.get("total_rows", 0)
        elapsed = r.get("elapsed_sec", 0)
        total_rows += rows
        total_err += errs

        status = "OK" if errs == 0 else f"{errs} erro(s)"
        tbl_count = len(r.get("tables", []))
        print(f"  + {schema}: {tbl_count} tabela(s), {rows} linha(s) — {status} [{elapsed}s]")

        for t in r.get("tables", []):
            if t.get("ok") is False:
                print(f"      ERRO {t['table']}: source={t.get('source','?')} dest={t.get('dest','?')}")

    report["finished_at"] = datetime.now(timezone.utc).isoformat()
    report["total_rows"] = total_rows
    report["total_errors"] = total_err

    print()
    print(f"[migrate] concluído: {total_rows} linha(s), {total_err} erro(s)")

    if args.report:
        with open(args.report, "w", encoding="utf-8") as f:
            json.dump(report, f, indent=2, ensure_ascii=False)
        print(f"[migrate] relatório salvo em: {args.report}")
    else:
        ts = datetime.now(timezone.utc).strftime("%Y%m%d_%H%M%S")
        auto_report = f"migrate_report_{ts}.json"
        with open(auto_report, "w", encoding="utf-8") as f:
            json.dump(report, f, indent=2, ensure_ascii=False)
        print(f"[migrate] relatório salvo em: {auto_report}")

    return 1 if total_err else 0


if __name__ == "__main__":
    sys.exit(main())
