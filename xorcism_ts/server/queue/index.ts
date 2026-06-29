/**
 * queue/index.ts — Helpers de alto nível sobre o cliente RabbitMQ.
 * Todas as funções são fire-and-forget; falhas são logadas internamente.
 */

import { publish } from "./rabbitmq";

export { publish, closeRabbitMQ, isRabbitMQConnected } from "./rabbitmq";

/** Publica um job recém-criado na fila de connectors. */
export function publishJob(opts: {
  jobId: number;
  connector: string;
  params: unknown;
  target: string | null;
  userId: number | null;
  engagementId?: number | null;
  worker?: string | null;
}): void {
  publish("xdefense.connectors", opts.connector, opts).catch(() => {});
}

/** Publica uma tarefa de import (ex: NVD, ATT&CK, OVAL, Sigma). */
export function publishImport(importer: string, args: Record<string, unknown> = {}): void {
  publish("xdefense.imports", importer, { importer, args }).catch(() => {});
}

/** Publica um evento de notificação (webhook, alerta). */
export function publishNotification(event: string, data: unknown): void {
  publish("xdefense.notifications", event, { event, data }).catch(() => {});
}

/** Publica uma tarefa do scheduler (cron). */
export function publishSchedulerTask(task: string, payload: unknown = {}): void {
  publish("xdefense.scheduler", task, { task, payload }).catch(() => {});
}
