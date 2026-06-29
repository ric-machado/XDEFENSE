/**
 * scheduler_entrypoint.ts — Entry point standalone para o container do Scheduler.
 * Inicializa o banco e executa o loop de agendamento sem subir o servidor HTTP.
 */

import { ensureSchemaDbs, seedData } from "./db";
import { startScheduler } from "./scheduler";

async function main() {
  try {
    await ensureSchemaDbs();
    await seedData();
  } catch (e) {
    console.warn("[scheduler] seed error (non-fatal):", (e as Error).message);
  }
  startScheduler();
  console.log("[scheduler] running standalone — press Ctrl+C to stop");
}

main().catch((e) => { console.error(e); process.exit(1); });
