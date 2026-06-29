/**
 * routes/azure.ts — Azure AD (Entra ID) login/callback para o XDEFENSE.
 *
 * Ativado quando AZURE_TENANT_ID + AZURE_CLIENT_ID estão definidas.
 * Fluxo: GET /api/auth/azure → redirect Azure → GET /api/auth/azure/callback → sessão XID.
 */

import { Router, Request, Response } from "express";
import crypto from "crypto";
import * as xid from "../xid";
import { startSession, clientIp } from "../auth";
import { AZURE_ENABLED, getAzureAuthUrl, exchangeCodeForUser } from "../auth/azure";

const router = Router();

// Anti-CSRF state store (in-memory; basta para o fluxo OAuth de ~5 min)
const pendingStates = new Map<string, number>();
setInterval(() => {
  const cutoff = Date.now() - 10 * 60 * 1000;
  for (const [k, t] of pendingStates) { if (t < cutoff) pendingStates.delete(k); }
}, 5 * 60 * 1000).unref();

router.get("/azure", (_req: Request, res: Response) => {
  if (!AZURE_ENABLED) return void res.status(404).json({ error: "Azure AD não configurado" });
  const state = crypto.randomBytes(16).toString("hex");
  pendingStates.set(state, Date.now());
  res.redirect(getAzureAuthUrl(state));
});

router.get("/azure/callback", async (req: Request, res: Response) => {
  if (!AZURE_ENABLED) return void res.status(404).json({ error: "Azure AD não configurado" });

  const { code, state, error: oauthError } = req.query as Record<string, string>;

  if (oauthError) {
    console.warn("[azure] OAuth error:", oauthError);
    return void res.redirect("/login?error=azure_oauth");
  }

  if (!state || !pendingStates.has(state)) {
    return void res.redirect("/login?error=invalid_state");
  }
  pendingStates.delete(state);

  if (!code) return void res.redirect("/login?error=no_code");

  const azureUser = await exchangeCodeForUser(code);
  if (!azureUser) return void res.redirect("/login?error=azure_token");

  const ip = clientIp(req);
  const lowered = azureUser.email.toLowerCase();

  // Localizar ou criar usuário XID
  let user = xid.findUserByEmail(lowered);
  if (!user) {
    xid.createUser({
      email: azureUser.email,
      displayName: azureUser.displayName,
      passwordHash: "",
    });
    user = xid.findUserByEmail(lowered)!;
    xid.addAudit({ userId: user.UserID, action: "azure_register", resourceType: "user",
      resourceKey: String(user.UserID), ip, detail: `oid=${azureUser.oid}` });
  }

  if (!user.IsApproved) return void res.redirect("/login?error=not_approved");

  startSession(req, res, user.UserID);
  xid.addAudit({ userId: user.UserID, action: "azure_login", ip });
  res.redirect("/dashboard");
});

export default router;
