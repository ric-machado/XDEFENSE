/**
 * database/types.ts — Contrato público da camada de abstração de banco.
 *
 * Nenhum módulo fora de server/database/ deve importar better-sqlite3 ou pg
 * diretamente. Todo acesso ao banco passa por DbAdapter.
 *
 * XDEFENSE_DB_ENGINE=sqlite  → SqliteAdapter  (Fase 1-2, default)
 * XDEFENSE_DB_ENGINE=postgres → PostgresAdapter (Fase 3+)
 */

// ── Tipos de resultado ────────────────────────────────────────────────────────

export type DbRow = Record<string, unknown>;

export interface RunResult {
  /** Número de linhas afetadas (INSERT/UPDATE/DELETE). */
  changes: number;
  /** Último ID inserido (quando aplicável). */
  lastId?: number;
}

// ── Interface central ─────────────────────────────────────────────────────────

/**
 * DbAdapter — interface assíncrona e engine-agnóstica para acesso ao banco.
 *
 * Parâmetros são sempre passados como array posicional; o adaptador resolve
 * a interpolação de acordo com o driver (`?` para SQLite, `$1` para PostgreSQL).
 *
 * Exemplo de uso (novo código):
 *   const db = getDbAdapter("xorcism");
 *   const row = await db.get<Asset>("SELECT * FROM ASSET WHERE AssetID=?", [id]);
 *   const rows = await db.all<Asset>("SELECT * FROM ASSET WHERE TenantID=?", [tid]);
 *   await db.run("UPDATE ASSET SET AssetName=? WHERE AssetID=?", [name, id]);
 *   await db.transaction(async tx => {
 *     const id = await tx.run("INSERT INTO ...", [...]);
 *     await tx.run("INSERT INTO ...", [...]);
 *   });
 */
export interface DbAdapter {
  /**
   * Retorna a primeira linha que corresponde à query, ou `undefined` se vazia.
   */
  get<T extends DbRow = DbRow>(sql: string, params?: unknown[]): Promise<T | undefined>;

  /**
   * Retorna todas as linhas do resultado.
   */
  all<T extends DbRow = DbRow>(sql: string, params?: unknown[]): Promise<T[]>;

  /**
   * Executa uma query de mutação (INSERT/UPDATE/DELETE).
   * Retorna número de linhas afetadas e, se disponível, o último ID inserido.
   */
  run(sql: string, params?: unknown[]): Promise<RunResult>;

  /**
   * Executa SQL bruto (DDL: CREATE TABLE, CREATE INDEX, etc.).
   * Não aceita parâmetros.
   */
  exec(sql: string): Promise<void>;

  /**
   * Executa `fn` dentro de uma transação atômica.
   * Em caso de exceção, faz rollback automaticamente.
   */
  transaction<T>(fn: (tx: DbAdapter) => Promise<T>): Promise<T>;

  /**
   * Retorna o nome do schema corrente (somente para PostgreSQL;
   * no SQLite retorna undefined).
   */
  readonly schema?: string;
}

// ── Factory ───────────────────────────────────────────────────────────────────

/**
 * Tipo da factory exportada por adapter.ts.
 * O name é o nome lógico do banco (ex: "xorcism", "xvulnerability").
 */
export type GetDbAdapterFn = (name: string) => DbAdapter;
