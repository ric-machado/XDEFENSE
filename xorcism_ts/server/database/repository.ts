/**
 * database/repository.ts — Helpers reutilizáveis sobre DbAdapter.
 *
 * Estas funções encapsulam padrões comuns (paginação, upsert, bulk insert,
 * alocação de PK) sem conhecer o driver subjacente. Código novo deve preferi-
 * las às queries manuais; código legado pode migrar gradualmente.
 */

import type { DbAdapter, DbRow, RunResult } from "./types";

// ── Paginação ─────────────────────────────────────────────────────────────────

export interface PageResult<T> {
  rows: T[];
  total: number;
  page: number;
  pageSize: number;
  totalPages: number;
}

/**
 * Executa uma query paginada.
 *
 * @param db        Adaptador de banco.
 * @param sql       Query SELECT sem LIMIT/OFFSET (não incluir ORDER BY aqui se
 *                  quiser que `orderBy` seja aplicado).
 * @param params    Parâmetros posicionais da query.
 * @param page      Página atual (base 1).
 * @param pageSize  Tamanho da página (default 50, max 500).
 * @param orderBy   Cláusula ORDER BY sem a palavra-chave (ex: "CreatedAt DESC").
 *
 * Nota: a query de contagem wrapa `sql` em `SELECT COUNT(*) FROM (...)`,
 * portanto `sql` não deve terminar com `;`.
 */
export async function paginate<T extends DbRow = DbRow>(
  db: DbAdapter,
  sql: string,
  params: unknown[] = [],
  page = 1,
  pageSize = 50,
  orderBy?: string,
): Promise<PageResult<T>> {
  const safePage = Math.max(1, Math.floor(page));
  const safeSize = Math.min(500, Math.max(1, Math.floor(pageSize)));
  const offset = (safePage - 1) * safeSize;

  const countRow = await db.get<{ total: number }>(
    `SELECT COUNT(*) AS total FROM (${sql}) AS _count_wrap`,
    params,
  );
  const total = Number(countRow?.total ?? 0);
  const totalPages = Math.ceil(total / safeSize) || 1;

  const orderClause = orderBy ? ` ORDER BY ${orderBy}` : "";
  const rows = await db.all<T>(
    `${sql}${orderClause} LIMIT ? OFFSET ?`,
    [...params, safeSize, offset],
  );

  return { rows, total, page: safePage, pageSize: safeSize, totalPages };
}

// ── Upsert ────────────────────────────────────────────────────────────────────

/**
 * Insere uma linha ou atualiza as colunas `updateCols` em conflito na `conflictCol`.
 *
 * Gera: INSERT INTO table (cols) VALUES (vals) ON CONFLICT (conflictCol)
 *       DO UPDATE SET col1=excluded.col1, ...
 *
 * @param db           Adaptador de banco.
 * @param table        Nome da tabela (sem prefixo de schema).
 * @param row          Objeto com os dados a inserir/atualizar.
 * @param conflictCol  Coluna(s) de conflito (string ou array).
 * @param updateCols   Colunas a atualizar em conflito (default: todas exceto conflictCol).
 */
export async function upsert(
  db: DbAdapter,
  table: string,
  row: DbRow,
  conflictCol: string | string[],
  updateCols?: string[],
): Promise<RunResult> {
  const cols = Object.keys(row);
  const vals = Object.values(row);
  const conflict = Array.isArray(conflictCol) ? conflictCol.join(", ") : conflictCol;
  const conflictSet = new Set(Array.isArray(conflictCol) ? conflictCol : [conflictCol]);
  const toUpdate = updateCols ?? cols.filter((c) => !conflictSet.has(c));

  const placeholders = cols.map(() => "?").join(", ");
  const updateClause = toUpdate
    .map((c) => `"${c}" = excluded."${c}"`)
    .join(", ");

  const sql =
    `INSERT INTO "${table}" (${cols.map((c) => `"${c}"`).join(", ")}) ` +
    `VALUES (${placeholders}) ` +
    `ON CONFLICT (${conflict}) DO UPDATE SET ${updateClause}`;

  return db.run(sql, vals);
}

// ── Bulk insert ───────────────────────────────────────────────────────────────

/**
 * Insere múltiplas linhas em uma única transação.
 * Cada linha é inserida individualmente (compatível com SQLite e PostgreSQL).
 * Para volumes muito grandes, prefira COPY (PostgreSQL) — esse helper cobre o caso geral.
 *
 * @param db          Adaptador de banco.
 * @param table       Nome da tabela.
 * @param rows        Array de objetos com os dados.
 * @param onConflict  "ignore" | "update" | undefined (default: erro em conflito).
 * @param conflictCol Coluna de conflito (necessário se onConflict === "update").
 */
export async function bulkInsert(
  db: DbAdapter,
  table: string,
  rows: DbRow[],
  onConflict?: "ignore" | "update",
  conflictCol?: string | string[],
): Promise<number> {
  if (rows.length === 0) return 0;

  let inserted = 0;
  await db.transaction(async (tx) => {
    for (const row of rows) {
      if (onConflict === "update" && conflictCol) {
        await upsert(tx, table, row, conflictCol);
      } else {
        const cols = Object.keys(row);
        const vals = Object.values(row);
        const placeholders = cols.map(() => "?").join(", ");
        const conflict = onConflict === "ignore" ? " ON CONFLICT DO NOTHING" : "";
        await tx.run(
          `INSERT INTO "${table}" (${cols.map((c) => `"${c}"`).join(", ")}) VALUES (${placeholders})${conflict}`,
          vals,
        );
      }
      inserted++;
    }
  });

  return inserted;
}

// ── allocId via DbAdapter ─────────────────────────────────────────────────────

/**
 * Aloca o próximo ID para uma tabela usando a tabela XSEQ (mesma lógica de
 * db.ts:allocId, mas via DbAdapter assíncrono — para código novo e para o
 * PostgresAdapter na Fase 3).
 *
 * No SQLite, a transação interna é síncrona (Promise.resolve imediato).
 * No PostgreSQL (Fase 3), usa INSERT ... ON CONFLICT DO UPDATE RETURNING.
 */
export async function allocIdAdapter(
  db: DbAdapter,
  table: string,
  idCol: string,
): Promise<number> {
  const t = String(table).replace(/[^A-Za-z0-9_]/g, "");
  const c = String(idCol).replace(/[^A-Za-z0-9_]/g, "");
  const key = `${t}.${c}`;

  await db.exec(
    "CREATE TABLE IF NOT EXISTS XSEQ (SeqName TEXT PRIMARY KEY, Val INTEGER NOT NULL DEFAULT 0)",
  );

  return db.transaction(async (tx) => {
    await tx.run(
      "INSERT INTO XSEQ(SeqName, Val) VALUES (?, 0) ON CONFLICT DO NOTHING",
      [key],
    );
    const row = await tx.get<{ Val: number }>(
      `UPDATE XSEQ SET Val = MAX(Val + 1, (SELECT COALESCE(MAX("${c}"),0)+1 FROM "${t}")) WHERE SeqName=? RETURNING Val`,
      [key],
    );
    if (!row) throw new Error(`[allocIdAdapter] XSEQ não retornou Val para ${key}`);
    return Number(row.Val);
  });
}
