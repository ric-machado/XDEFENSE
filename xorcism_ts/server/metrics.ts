/**
 * metrics.ts — Prometheus instrumentation para o XDEFENSE (prom-client).
 *
 * Exposto em GET /api/metrics — raspado pelo Prometheus a cada 30s.
 */

import { Registry, collectDefaultMetrics, Counter, Histogram, Gauge } from "prom-client";
import { Request, Response, NextFunction } from "express";

export const registry = new Registry();
registry.setDefaultLabels({ app: "xdefense" });

// Node.js default metrics (event loop lag, memory, GC, handles, etc.)
collectDefaultMetrics({ register: registry });

// ── HTTP request duration ─────────────────────────────────────────────────────
export const httpRequestDuration = new Histogram({
  name: "http_request_duration_seconds",
  help: "HTTP request duration in seconds",
  labelNames: ["method", "route", "status_code"],
  buckets: [0.005, 0.01, 0.025, 0.05, 0.1, 0.25, 0.5, 1, 2.5, 5],
  registers: [registry],
});

// ── XDEFENSE job counters ─────────────────────────────────────────────────────
export const jobsTotal = new Counter({
  name: "xdefense_jobs_total",
  help: "Total XDEFENSE connector jobs created",
  labelNames: ["connector", "status"],
  registers: [registry],
});

export const connectorRunsTotal = new Counter({
  name: "xdefense_connector_runs_total",
  help: "Total connector execution runs",
  labelNames: ["connector", "result"],
  registers: [registry],
});

// ── Risk score calculation ────────────────────────────────────────────────────
export const riskScoreCalcDuration = new Histogram({
  name: "xdefense_risk_score_calculation_duration_seconds",
  help: "Duration of risk score calculations",
  labelNames: ["scope"],
  buckets: [0.01, 0.05, 0.1, 0.5, 1, 2, 5, 10],
  registers: [registry],
});

// ── Scheduler ─────────────────────────────────────────────────────────────────
export const schedulerRunsTotal = new Counter({
  name: "xdefense_scheduler_runs_total",
  help: "Total scheduled task executions",
  labelNames: ["task", "result"],
  registers: [registry],
});

export const schedulerRunDuration = new Histogram({
  name: "xdefense_scheduler_run_duration_seconds",
  help: "Duration of scheduled task runs",
  labelNames: ["task"],
  buckets: [0.1, 0.5, 1, 5, 10, 30, 60],
  registers: [registry],
});

// ── Authentication ────────────────────────────────────────────────────────────
export const authEventsTotal = new Counter({
  name: "xdefense_auth_events_total",
  help: "Authentication events",
  labelNames: ["method", "result"],
  registers: [registry],
});

// ── Active sessions (gauge, not persistent across restarts) ───────────────────
export const activeSessions = new Gauge({
  name: "xdefense_active_sessions",
  help: "Approximate number of active user sessions",
  registers: [registry],
});

// ── Import operations ─────────────────────────────────────────────────────────
export const importOperationsTotal = new Counter({
  name: "xdefense_import_operations_total",
  help: "Total data import operations",
  labelNames: ["source", "result"],
  registers: [registry],
});

// ── Prometheus scrape endpoint handler ───────────────────────────────────────
export async function metricsHandler(_req: Request, res: Response): Promise<void> {
  res.set("Content-Type", registry.contentType);
  res.end(await registry.metrics());
}

// ── HTTP instrumentation middleware ──────────────────────────────────────────
const SKIP_PATHS = new Set(["/api/metrics", "/login", "/register", "/forgot", "/reset"]);

export function httpMetricsMiddleware(req: Request, res: Response, next: NextFunction): void {
  if (SKIP_PATHS.has(req.path)) return next();

  const start = process.hrtime.bigint();

  res.on("finish", () => {
    const duration = Number(process.hrtime.bigint() - start) / 1e9;
    // Collapse numeric path segments to reduce cardinality
    const route = req.route?.path ?? req.path.replace(/\/\d+/g, "/:id");
    httpRequestDuration.observe(
      { method: req.method, route, status_code: String(res.statusCode) },
      duration,
    );
  });

  next();
}
