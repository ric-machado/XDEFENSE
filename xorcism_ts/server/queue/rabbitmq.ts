/**
 * queue/rabbitmq.ts — Cliente RabbitMQ para o XDEFENSE.
 *
 * Comportamento:
 * - RABBITMQ_URL não definida → modo silencioso (no-op), sem erros.
 * - Reconexão automática com backoff exponencial (1s → 30s).
 * - Um único canal por processo (amqplib Channel).
 * - Todos os exchanges são do tipo 'direct', duráveis.
 * - Publish é fire-and-forget (errors são logados, nunca relançados).
 *
 * Exchanges declarados:
 *   xdefense.connectors   — jobs de connector runner
 *   xdefense.imports      — importers (NVD, ATT&CK, OVAL, etc.)
 *   xdefense.notifications — webhooks e alertas
 *   xdefense.scheduler    — tarefas agendadas
 *   xdefense.ai           — requisições ao Ollama (profile ai)
 */

import type { ChannelModel, Channel } from "amqplib";

const EXCHANGES = [
  "xdefense.connectors",
  "xdefense.imports",
  "xdefense.notifications",
  "xdefense.scheduler",
  "xdefense.ai",
] as const;

export type XExchange = (typeof EXCHANGES)[number];

let _conn: ChannelModel | null = null;
let _ch: Channel | null = null;
let _connecting = false;
let _retryDelay = 1000;
const MAX_DELAY = 30_000;

const RABBITMQ_URL = process.env.RABBITMQ_URL ?? "";

async function connect(): Promise<Channel | null> {
  if (!RABBITMQ_URL) return null;
  if (_ch) return _ch;
  if (_connecting) return null;
  _connecting = true;
  try {
    const amqp = await import("amqplib");
    _conn = await amqp.connect(RABBITMQ_URL);
    _conn.on("error", (err: Error) => {
      console.warn("[rabbitmq] connection error:", err.message);
      _conn = null; _ch = null;
      scheduleReconnect();
    });
    _conn.on("close", () => {
      _conn = null; _ch = null;
      if (RABBITMQ_URL) scheduleReconnect();
    });
    _ch = await _conn.createChannel();
    for (const ex of EXCHANGES) {
      await _ch!.assertExchange(ex, "direct", { durable: true });
    }
    _retryDelay = 1000;
    console.log("[rabbitmq] connected to", RABBITMQ_URL.replace(/:\/\/[^@]+@/, "://<credentials>@"));
    return _ch;
  } catch (err) {
    console.warn("[rabbitmq] connect failed:", (err as Error).message);
    _conn = null; _ch = null;
    scheduleReconnect();
    return null;
  } finally {
    _connecting = false;
  }
}

function scheduleReconnect(): void {
  if (!RABBITMQ_URL) return;
  setTimeout(() => { connect().catch(() => {}); }, _retryDelay);
  _retryDelay = Math.min(_retryDelay * 2, MAX_DELAY);
}

// Inicializa conexão em background ao importar o módulo (non-blocking)
if (RABBITMQ_URL) {
  connect().catch(() => {});
}

/**
 * Publica uma mensagem em um exchange do XDEFENSE.
 * Fire-and-forget — falhas são logadas, nunca propagadas.
 */
export async function publish(
  exchange: XExchange,
  routingKey: string,
  message: unknown,
): Promise<void> {
  if (!RABBITMQ_URL) return;
  const ch = _ch ?? await connect();
  if (!ch) return;
  try {
    const buf = Buffer.from(JSON.stringify(message));
    ch.publish(exchange, routingKey, buf, {
      persistent: true,
      contentType: "application/json",
    });
  } catch (err) {
    console.warn("[rabbitmq] publish error:", (err as Error).message);
    _ch = null;
    scheduleReconnect();
  }
}

/** Encerra a conexão graciosamente (chamado em SIGTERM via index.ts). */
export async function closeRabbitMQ(): Promise<void> {
  try {
    if (_ch) { await _ch.close(); _ch = null; }
    if (_conn) { await _conn.close(); _conn = null; }
  } catch { /* ignorar erros de shutdown */ }
}

/** Verdade se a conexão RabbitMQ está ativa. */
export function isRabbitMQConnected(): boolean {
  return _ch !== null;
}
