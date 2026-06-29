/**
 * database/postgres.ts — Stub do PostgresAdapter para Fase 2.
 *
 * A implementação real (pg.Pool, search_path por schema, RETURNING, etc.)
 * é entregue na Fase 3. Por ora, todos os métodos lançam um erro claro para
 * evitar uso acidental de `XDEFENSE_DB_ENGINE=postgres` antes da Fase 3.
 */

import type { DbAdapter, DbRow, RunResult } from "./types";

// ── PostgresAdapter (stub) ────────────────────────────────────────────────────

export class PostgresAdapter implements DbAdapter {
  readonly schema?: string;

  constructor(schema?: string) {
    this.schema = schema;
  }

  private _notReady(): never {
    throw new Error(
      "[PostgresAdapter] PostgreSQL não está configurado. " +
      "Execute a Fase 3 da migração e defina XDEFENSE_DB_ENGINE=postgres."
    );
  }

  async get<T extends DbRow = DbRow>(_sql: string, _params?: unknown[]): Promise<T | undefined> {
    this._notReady();
  }

  async all<T extends DbRow = DbRow>(_sql: string, _params?: unknown[]): Promise<T[]> {
    this._notReady();
  }

  async run(_sql: string, _params?: unknown[]): Promise<RunResult> {
    this._notReady();
  }

  async exec(_sql: string): Promise<void> {
    this._notReady();
  }

  async transaction<T>(_fn: (tx: DbAdapter) => Promise<T>): Promise<T> {
    this._notReady();
  }
}

// ── Factory de adaptadores PostgreSQL ─────────────────────────────────────────

const _adapters = new Map<string, PostgresAdapter>();

/**
 * Retorna (ou cria) um PostgresAdapter para o schema lógico indicado.
 * Na Fase 3 esta função inicializará o pool pg e configurará o search_path.
 */
export function getPostgresAdapter(name: string): PostgresAdapter {
  const lower = name.toLowerCase();
  if (_adapters.has(lower)) return _adapters.get(lower)!;
  const adapter = new PostgresAdapter(lower);
  _adapters.set(lower, adapter);
  return adapter;
}
