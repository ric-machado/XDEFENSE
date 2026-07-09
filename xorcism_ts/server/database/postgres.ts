/**
 * database/postgres.ts — PostgresAdapter sobre pg (node-postgres).
 *
 * Um único Pool global é partilhado por todos os schemas.
 * O search_path é configurado por transação via SET LOCAL para isolar o schema.
 *
 * Parâmetros: a interface DbAdapter usa placeholders `?`; este adapter converte
 * para a notação posicional `$1`, `$2`, ... do PostgreSQL antes de cada query.
 *
 * Fase 3: implementação completa. Para usar, defina XDEFENSE_DB_ENGINE=postgres
 * e garanta que as variáveis POSTGRES_* estejam definidas.
 */

import { Pool, PoolClient } from "pg";
import type { DbAdapter, DbRow, RunResult } from "./types";

// ── Pool global ───────────────────────────────────────────────────────────────

let _pool: Pool | null = null;

function getPool(): Pool {
  if (_pool) return _pool;
  _pool = new Pool({
    host:     process.env.POSTGRES_HOST     ?? "postgres",
    port:     Number(process.env.POSTGRES_PORT ?? 5432),
    database: process.env.POSTGRES_DB       ?? "xdefense",
    user:     process.env.POSTGRES_APP_USER ?? "xdefense_app",
    password: process.env.POSTGRES_APP_PASSWORD,
    max:      Number(process.env.POSTGRES_POOL_MAX ?? 20),
    idleTimeoutMillis:    30_000,
    connectionTimeoutMillis: 5_000,
  });

  _pool.on("error", (err) => {
    console.error("[PostgresAdapter] pool idle client error:", err.message);
  });

  return _pool;
}

/** Converte placeholders `?` para `$1`, `$2`, ... do PostgreSQL. */
function toPositional(sql: string): string {
  let i = 0;
  return sql.replace(/\?/g, () => `$${++i}`);
}

// ── Adapter wrapping um PoolClient (para transações) ─────────────────────────

class PostgresClientAdapter implements DbAdapter {
  constructor(
    private readonly client: PoolClient,
    readonly schema?: string,
  ) {}

  private async setSearchPath(): Promise<void> {
    if (this.schema) {
      await this.client.query(`SET LOCAL search_path = "${this.schema}", public`);
    }
  }

  async get<T extends DbRow = DbRow>(sql: string, params: unknown[] = []): Promise<T | undefined> {
    await this.setSearchPath();
    const result = await this.client.query<T>(toPositional(sql), params);
    return result.rows[0];
  }

  async all<T extends DbRow = DbRow>(sql: string, params: unknown[] = []): Promise<T[]> {
    await this.setSearchPath();
    const result = await this.client.query<T>(toPositional(sql), params);
    return result.rows;
  }

  async run(sql: string, params: unknown[] = []): Promise<RunResult> {
    await this.setSearchPath();
    const result = await this.client.query(toPositional(sql), params);
    const lastId = (result.rows[0] as Record<string, unknown> | undefined);
    return {
      changes: result.rowCount ?? 0,
      lastId:  lastId ? Number(Object.values(lastId)[0]) || undefined : undefined,
    };
  }

  async exec(sql: string): Promise<void> {
    await this.setSearchPath();
    await this.client.query(sql);
  }

  async transaction<T>(fn: (tx: DbAdapter) => Promise<T>): Promise<T> {
    // Transação aninhada via SAVEPOINT (o BEGIN externo já está ativo)
    const sp = `_sp_${Date.now()}_${Math.random().toString(36).slice(2)}`;
    await this.client.query(`SAVEPOINT ${sp}`);
    try {
      const result = await fn(this);
      await this.client.query(`RELEASE SAVEPOINT ${sp}`);
      return result;
    } catch (err) {
      await this.client.query(`ROLLBACK TO SAVEPOINT ${sp}`);
      throw err;
    }
  }
}

// ── PostgresAdapter (top-level, adquire conexão do pool) ─────────────────────

export class PostgresAdapter implements DbAdapter {
  readonly schema?: string;

  constructor(schema?: string) {
    this.schema = schema?.toLowerCase();
  }

  private async withClient<T>(fn: (client: PoolClient) => Promise<T>): Promise<T> {
    const client = await getPool().connect();
    try {
      if (this.schema) {
        await client.query(`SET search_path = "${this.schema}", public`);
      }
      return await fn(client);
    } finally {
      client.release();
    }
  }

  async get<T extends DbRow = DbRow>(sql: string, params: unknown[] = []): Promise<T | undefined> {
    return this.withClient(async (client) => {
      const result = await client.query<T>(toPositional(sql), params);
      return result.rows[0];
    });
  }

  async all<T extends DbRow = DbRow>(sql: string, params: unknown[] = []): Promise<T[]> {
    return this.withClient(async (client) => {
      const result = await client.query<T>(toPositional(sql), params);
      return result.rows;
    });
  }

  async run(sql: string, params: unknown[] = []): Promise<RunResult> {
    return this.withClient(async (client) => {
      const result = await client.query(toPositional(sql), params);
      const lastId = (result.rows[0] as Record<string, unknown> | undefined);
      return {
        changes: result.rowCount ?? 0,
        lastId:  lastId ? Number(Object.values(lastId)[0]) || undefined : undefined,
      };
    });
  }

  async exec(sql: string): Promise<void> {
    return this.withClient(async (client) => {
      await client.query(sql);
    });
  }

  async transaction<T>(fn: (tx: DbAdapter) => Promise<T>): Promise<T> {
    const client = await getPool().connect();
    try {
      await client.query("BEGIN");
      if (this.schema) {
        await client.query(`SET LOCAL search_path = "${this.schema}", public`);
      }
      const txAdapter = new PostgresClientAdapter(client, this.schema);
      const result = await fn(txAdapter);
      await client.query("COMMIT");
      return result;
    } catch (err) {
      await client.query("ROLLBACK");
      throw err;
    } finally {
      client.release();
    }
  }
}

// ── Factory de adaptadores ────────────────────────────────────────────────────

const _adapters = new Map<string, PostgresAdapter>();

/**
 * Retorna (ou cria) um PostgresAdapter para o schema lógico indicado.
 * O schema mapeia diretamente ao search_path do PostgreSQL (ex: "xorcism").
 */
export function getPostgresAdapter(name: string): PostgresAdapter {
  const lower = name.toLowerCase();
  if (_adapters.has(lower)) return _adapters.get(lower)!;
  const adapter = new PostgresAdapter(lower);
  _adapters.set(lower, adapter);
  return adapter;
}

/** Encerra o pool ao desligar o processo. Chamado por index.ts no SIGTERM. */
export async function closePostgresPool(): Promise<void> {
  if (_pool) {
    await _pool.end();
    _pool = null;
  }
}
