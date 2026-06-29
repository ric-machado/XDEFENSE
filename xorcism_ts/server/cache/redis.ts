/**
 * cache/redis.ts — Cliente Redis (ioredis) para o XDEFENSE.
 *
 * Comportamento:
 * - REDIS_URL não definida → redis desabilitado (no-op), sem erros.
 * - Reconexão automática gerenciada pelo ioredis (retryStrategy).
 * - Um único cliente por processo, compartilhado por todos os módulos.
 * - isRedisAvailable() permite fallback gracioso no código chamador.
 */

import Redis from "ioredis";

const REDIS_URL = process.env.REDIS_URL ?? "";

let _client: Redis | null = null;
let _ready = false;

if (REDIS_URL) {
  _client = new Redis(REDIS_URL, {
    lazyConnect: true,
    maxRetriesPerRequest: 1,
    retryStrategy(times: number) {
      return Math.min(times * 500, 10_000);
    },
    reconnectOnError(err: Error) {
      return err.message.includes("READONLY");
    },
  });

  _client.on("ready", () => {
    _ready = true;
    console.log("[redis] connected to", REDIS_URL.replace(/:\/\/[^@]+@/, "://<credentials>@"));
  });
  _client.on("error", (err: Error) => {
    if (_ready) console.warn("[redis] error:", err.message);
  });
  _client.on("close", () => { _ready = false; });

  _client.connect().catch(() => {});
}

/** Retorna o cliente Redis, ou null se Redis não está configurado/disponível. */
export function getRedis(): Redis | null {
  return _ready ? _client : null;
}

/** True se Redis está configurado E conectado. */
export function isRedisAvailable(): boolean {
  return _ready;
}

/** Encerra a conexão graciosamente (chamado em SIGTERM). */
export async function closeRedis(): Promise<void> {
  if (_client) {
    await _client.quit().catch(() => {});
    _client = null;
    _ready = false;
  }
}
