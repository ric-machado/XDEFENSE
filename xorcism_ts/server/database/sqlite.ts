/**
 * database/sqlite.ts — Implementação do DbAdapter sobre better-sqlite3.
 *
 * As chamadas síncronas do better-sqlite3 são embrulhadas em Promise.resolve()
 * para satisfazer a interface assíncrona sem custo de event loop (não há I/O
 * async; a camada async existe para que o PostgresAdapter (Fase 3) possa ser
 * trocado sem alterar os chamadores).
 *
 * Parâmetros: recebe array posicional e spread para o better-sqlite3
 * (que aceita rest params). A interpolação `?` do SQLite é preservada.
 */

import Database from "better-sqlite3";
import type { DbAdapter, DbRow, RunResult } from "./types";

// ── SqliteAdapter ─────────────────────────────────────────────────────────────

export class SqliteAdapter implements DbAdapter {
  readonly schema?: string = undefined; // SQLite não tem schemas

  constructor(private readonly _db: Database.Database) {}

  /** Acesso ao objeto nativo better-sqlite3, para código legado de db.ts. */
  get raw(): Database.Database {
    return this._db;
  }

  async get<T extends DbRow = DbRow>(sql: string, params: unknown[] = []): Promise<T | undefined> {
    const stmt = this._db.prepare(sql);
    return Promise.resolve(stmt.get(...params) as T | undefined);
  }

  async all<T extends DbRow = DbRow>(sql: string, params: unknown[] = []): Promise<T[]> {
    const stmt = this._db.prepare(sql);
    return Promise.resolve(stmt.all(...params) as T[]);
  }

  async run(sql: string, params: unknown[] = []): Promise<RunResult> {
    const stmt = this._db.prepare(sql);
    const info = stmt.run(...params);
    return Promise.resolve({
      changes: info.changes,
      lastId: Number(info.lastInsertRowid) || undefined,
    });
  }

  async exec(sql: string): Promise<void> {
    this._db.exec(sql);
    return Promise.resolve();
  }

  async transaction<T>(fn: (tx: DbAdapter) => Promise<T>): Promise<T> {
    // better-sqlite3 transactions são síncronas. Executamos fn() de forma
    // síncrona dentro da transação usando a API de transaction do driver.
    // Como SqliteAdapter.get/all/run retornam Promise.resolve() (valores já
    // resolvidos), fn() resolve imediatamente e nunca suspende.
    let result: T;
    let error: unknown;
    let threw = false;

    const txAdapter = new SqliteAdapter(this._db);

    const syncTx = this._db.transaction(() => {
      // Promise.resolve() de uma função async é resolvida sincronamente quando
      // não há await real — todos os métodos do SqliteAdapter satisfazem isso.
      let resolved = false;
      fn(txAdapter).then(
        (v) => { result = v; resolved = true; },
        (e) => { error = e; threw = true; resolved = true; },
      );
      // Garante que a promise resolveu antes de retornar da tx síncrona.
      if (!resolved) {
        throw new Error(
          "[SqliteAdapter] transaction() recebeu uma função com await real. " +
          "Somente operações síncronas (SQLite) são suportadas no modo sqlite."
        );
      }
    });

    syncTx();

    if (threw) throw error;
    return result!;
  }
}

// ── Factory de conexões SQLite ────────────────────────────────────────────────

const _adapters = new Map<string, SqliteAdapter>();

/**
 * Retorna (ou cria) um SqliteAdapter para o banco lógico indicado.
 * Delega para `getDb()` do db.ts legado para reutilizar a mesma conexão
 * e os pragmas já configurados (WAL, busy_timeout, mmap, etc.).
 */
export function getSqliteAdapter(
  name: string,
  getDbFn: (n: string) => Database.Database,
): SqliteAdapter {
  const upper = name.toUpperCase();
  if (_adapters.has(upper)) return _adapters.get(upper)!;
  const db = getDbFn(upper);
  const adapter = new SqliteAdapter(db);
  _adapters.set(upper, adapter);
  return adapter;
}
