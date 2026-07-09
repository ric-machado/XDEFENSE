/**
 * antibot.ts — Anti-bot / anti-scraping protection (Express).
 *
 *  1) Per-IP rate limiting (sliding window) — dois níveis:
 *       - global (todas as rotas /api),
 *       - reforçado nos endpoints DATA (bulk read/export).
 *  2) Bloqueio de User-Agents conhecidos de scraping.
 *  3) Detecção de burst → 429 + bloqueio temporário.
 *  4) Honeypot para formulários públicos.
 *
 * Backends:
 *   - Redis (rate-limiter-flexible / RateLimiterRedis) quando REDIS_URL está definida.
 *   - Fallback automático para RateLimiterMemory (comportamento idêntico, sem Redis).
 *
 * Thresholds configuráveis via variáveis de ambiente (ver abaixo).
 */
import { Request, Response, NextFunction } from "express";
import { RateLimiterMemory, RateLimiterRedis, RateLimiterAbstract } from "rate-limiter-flexible";
import { getRedis } from "./cache/redis";

const num = (v: string | undefined, d: number) => (v && Number.isFinite(+v) ? +v : d);

const WINDOW_SEC  = 60;
const GLOBAL_MAX  = num(process.env.XORCISM_RL_GLOBAL, 600);
const SCRAPE_MAX  = num(process.env.XORCISM_RL_SCRAPE, 90);
const BLOCK_SECS  = num(process.env.XORCISM_RL_BLOCK_MS, 5 * 60_000) / 1000;

// Common harvesting tools / scrapers
const BAD_UA = /(?:scrapy|httrack|wget|libwww|python-requests|python-urllib|go-http-client|node-fetch|axios\/|java\/|okhttp|curl\/|httpie|harvest|crawler|spider|masscan|nikto|sqlmap|nmap|zgrab|semrush|ahrefsbot|mj12bot|dotbot|petalbot|bytespider|gptbot|ccbot)/i;

// Bulk DATA endpoints — reinforced limit
const DATA_RE = /^\/api\/(rows|export|schema|lookup|tables|databases|vuln-search|asset-(cpes|vulnerabilities)|threatmodel-|threat-controls|feedback\/all)/;

// ── Rate-limiter instances ────────────────────────────────────────────────────
// Criados lazy na primeira requisição para dar tempo ao Redis conectar.

let _globalLimiter: RateLimiterAbstract | null = null;
let _scrapeLimiter: RateLimiterAbstract | null = null;

function buildLimiters(): void {
  const redis = getRedis();
  const opts = (points: number, blockDuration: number) =>
    redis
      ? new RateLimiterRedis({
          storeClient: redis,
          points,
          duration: WINDOW_SEC,
          blockDuration,
          keyPrefix: "rl",
          insuranceLimiter: new RateLimiterMemory({ points, duration: WINDOW_SEC, blockDuration }),
        })
      : new RateLimiterMemory({ points, duration: WINDOW_SEC, blockDuration });

  _globalLimiter = opts(GLOBAL_MAX, BLOCK_SECS);
  _scrapeLimiter = opts(SCRAPE_MAX, 0);
}

// ── Stats ─────────────────────────────────────────────────────────────────────

let blockedUaCount = 0;
let rateLimited = 0;
export function antibotStats() {
  return { blockedUaCount, rateLimited, redisRateLimit: getRedis() !== null };
}

// ── Helper ────────────────────────────────────────────────────────────────────

function ipOf(req: Request): string {
  const fwd = req.headers["x-forwarded-for"];
  if (typeof fwd === "string" && fwd) return fwd.split(",")[0].trim();
  return req.socket.remoteAddress ?? "?";
}

// ── Honeypot ──────────────────────────────────────────────────────────────────

/**
 * Detecta bots que preenchem o campo honeypot oculto do formulário de registro.
 * Retorna true se o campo foi preenchido (indica acesso automatizado).
 */
export function honeypotTriggered(req: Request): boolean {
  const body = req.body as Record<string, unknown> | undefined;
  if (!body) return false;
  const trap = body._trap ?? body.website ?? body.url ?? body.phone2 ?? "";
  return typeof trap === "string" && trap.trim().length > 0;
}

// ── Middleware ────────────────────────────────────────────────────────────────

export async function antibot(req: Request, res: Response, next: NextFunction): Promise<void> {
  const p = req.path;
  if (p.startsWith("/css/") || p.startsWith("/js/") || p.startsWith("/vendor/") || p === "/favicon.ico") {
    return next();
  }

  const ip = ipOf(req);
  const ua = String(req.headers["user-agent"] ?? "");

  // 1) Block harvesting UAs on HTML pages
  if (!p.startsWith("/api/") && (ua === "" || BAD_UA.test(ua))) {
    blockedUaCount++;
    res.setHeader("X-Robots-Tag", "noindex, nofollow");
    res.status(403).type("text/plain").send("Automated access blocked.");
    return;
  }

  // 2) Rate limiting (only /api)
  if (p.startsWith("/api/")) {
    if (!_globalLimiter) buildLimiters();

    try {
      await _globalLimiter!.consume(ip);
    } catch (rl: unknown) {
      rateLimited++;
      const retryAfter = (rl && typeof rl === "object" && "msBeforeNext" in rl)
        ? Math.ceil((rl as { msBeforeNext: number }).msBeforeNext / 1000)
        : Math.ceil(BLOCK_SECS);
      res.setHeader("Retry-After", String(retryAfter));
      res.status(429).json({ error: "Rate limit exceeded" });
      return;
    }

    // 3) Reinforced limit on data endpoints
    if (DATA_RE.test(p)) {
      try {
        await _scrapeLimiter!.consume("scrape:" + ip);
      } catch (rl: unknown) {
        rateLimited++;
        const retryAfter = (rl && typeof rl === "object" && "msBeforeNext" in rl)
          ? Math.ceil((rl as { msBeforeNext: number }).msBeforeNext / 1000)
          : WINDOW_SEC;
        res.setHeader("Retry-After", String(retryAfter));
        res.status(429).json({ error: "Scraping rate limit exceeded" });
        return;
      }
    }
  }

  next();
}
