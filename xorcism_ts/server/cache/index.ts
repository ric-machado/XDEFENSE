/**
 * cache/index.ts — Helpers de cache sobre Redis com fallback em memória.
 *
 * Usado por: risk scores, dashboards, contagens frequentes.
 * TTL padrão: 60s. Quando Redis está indisponível usa um Map em memória
 * (sem persistência cross-instance, mas sem erros).
 */

import { getRedis } from "./redis";

export { getRedis, isRedisAvailable, closeRedis } from "./redis";

// ── Cache em memória (fallback quando Redis indisponível) ─────────────────────

interface MemEntry<T> { value: T; expiresAt: number }
const _mem = new Map<string, MemEntry<unknown>>();

// Purge periódico do cache em memória (evita memory leak em instâncias longas)
setInterval(() => {
  const now = Date.now();
  for (const [k, e] of _mem) {
    if (now > e.expiresAt) _mem.delete(k);
  }
}, 60_000).unref();

// ── API pública ───────────────────────────────────────────────────────────────

/**
 * Retorna o valor cacheado para `key`, ou `undefined` se expirado/ausente.
 * Tenta Redis primeiro; cai no Map em memória.
 */
export async function cacheGet<T>(key: string): Promise<T | undefined> {
  const r = getRedis();
  if (r) {
    const raw = await r.get(key).catch(() => null);
    if (raw === null) return undefined;
    try { return JSON.parse(raw) as T; } catch { return undefined; }
  }
  const entry = _mem.get(key) as MemEntry<T> | undefined;
  if (!entry || Date.now() > entry.expiresAt) { _mem.delete(key); return undefined; }
  return entry.value;
}

/**
 * Armazena `value` em cache com TTL em segundos (padrão: 60s).
 */
export async function cacheSet(key: string, value: unknown, ttlSec = 60): Promise<void> {
  const r = getRedis();
  if (r) {
    await r.setex(key, ttlSec, JSON.stringify(value)).catch(() => {});
    return;
  }
  _mem.set(key, { value, expiresAt: Date.now() + ttlSec * 1000 });
}

/**
 * Remove uma entrada do cache.
 */
export async function cacheDel(key: string): Promise<void> {
  const r = getRedis();
  if (r) { await r.del(key).catch(() => {}); return; }
  _mem.delete(key);
}

/**
 * Distributed lock leve via Redis SET NX EX.
 * Retorna token (string) se o lock foi adquirido, ou null se já existe.
 * Use releaseLock() para liberar.
 */
export async function acquireLock(key: string, ttlSec = 30): Promise<string | null> {
  const r = getRedis();
  if (!r) return null; // sem Redis → sem lock distribuído
  const token = Math.random().toString(36).slice(2);
  const ok = await r.set(`lock:${key}`, token, "EX", ttlSec, "NX").catch(() => null);
  return ok === "OK" ? token : null;
}

/**
 * Libera um lock previamente adquirido (verifica token para evitar release indevido).
 */
export async function releaseLock(key: string, token: string): Promise<void> {
  const r = getRedis();
  if (!r) return;
  const cur = await r.get(`lock:${key}`).catch(() => null);
  if (cur === token) await r.del(`lock:${key}`).catch(() => {});
}
