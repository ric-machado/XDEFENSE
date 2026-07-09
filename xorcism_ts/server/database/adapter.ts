/**
 * database/adapter.ts — Factory central da camada de abstração de banco.
 *
 * Lê XDEFENSE_DB_ENGINE para decidir qual implementação retornar:
 *   sqlite   (default, Fase 1-2) → SqliteAdapter via getSqliteAdapter()
 *   postgres (Fase 3+)           → PostgresAdapter via getPostgresAdapter()
 *
 * Nenhum módulo externo precisa conhecer better-sqlite3 ou pg diretamente;
 * todo acesso ao banco passa por getDbAdapter().
 */

import type { DbAdapter } from "./types";
import { getSqliteAdapter } from "./sqlite";
import { getPostgresAdapter } from "./postgres";

// ── Seleção de engine ─────────────────────────────────────────────────────────

const ENGINE = (process.env.XDEFENSE_DB_ENGINE ?? "sqlite").toLowerCase();

if (ENGINE === "postgres") {
  // eslint-disable-next-line no-console
  console.warn(
    "[db] XDEFENSE_DB_ENGINE=postgres: apenas código novo que chama getDbAdapter() " +
      "diretamente usará PostgreSQL. As ~989 chamadas legadas via getDb().prepare() em " +
      "db.ts continuam síncronas sobre SQLite/libSQL, ignorando esta variável (Stage 2 / " +
      "Route C pendente — ver docs/DATABASE_BACKENDS_STAGE2.md). O lado Python pode estar " +
      "gravando em PostgreSQL enquanto a interface web exibe dados de SQLite."
  );
}

// ── Importação lazy do getDb legado (evita circular em módulos que importam db.ts) ──

let _getDbFn: ((name: string) => import("better-sqlite3").Database) | null = null;

function lazyGetDb(): (name: string) => import("better-sqlite3").Database {
  if (!_getDbFn) {
    // Importação síncrona; db.ts não tem ciclo com database/
    // eslint-disable-next-line @typescript-eslint/no-require-imports
    _getDbFn = require("../db").getDb as (name: string) => import("better-sqlite3").Database;
  }
  return _getDbFn;
}

// ── getDbAdapter — ponto de entrada público ───────────────────────────────────

/**
 * Retorna o DbAdapter correto para o banco/schema lógico informado.
 *
 * @param name  Nome lógico do banco (ex: "xorcism", "xvulnerability").
 *              Case-insensitive; normalizado internamente.
 */
export function getDbAdapter(name: string): DbAdapter {
  if (ENGINE === "postgres") {
    return getPostgresAdapter(name);
  }
  return getSqliteAdapter(name, lazyGetDb());
}

export type { DbAdapter } from "./types";
