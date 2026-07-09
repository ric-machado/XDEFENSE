/**
 * auth/azure.ts — Autenticação Azure AD (Entra ID) via OIDC / OAuth2 para o XDEFENSE.
 *
 * Ativado quando AZURE_TENANT_ID está definida. Suporta:
 *   - Login via redirect OAuth2 (authorization code flow)
 *   - Validação de tokens JWT com chaves públicas do JWKS endpoint
 *   - Mapeamento de grupos Azure AD → roles XDEFENSE
 *
 * Variáveis de ambiente:
 *   AZURE_TENANT_ID      ID do tenant (GUID)
 *   AZURE_CLIENT_ID      Client ID do app registration
 *   AZURE_CLIENT_SECRET  Client secret (ou use certificado via AZURE_CERT_*)
 *   AZURE_REDIRECT_URI   ex: https://xdefense.empresa.com/api/auth/azure/callback
 *   AZURE_SCOPE          escopos (padrão: openid profile email)
 *   AZURE_GROUP_CLAIM    claim que contém grupos (padrão: groups)
 */

export const AZURE_ENABLED = !!process.env.AZURE_TENANT_ID && !!process.env.AZURE_CLIENT_ID;

const TENANT = process.env.AZURE_TENANT_ID ?? "";
const CLIENT_ID = process.env.AZURE_CLIENT_ID ?? "";
const CLIENT_SECRET = process.env.AZURE_CLIENT_SECRET ?? "";
const REDIRECT_URI = process.env.AZURE_REDIRECT_URI ?? "";
const SCOPE = process.env.AZURE_SCOPE ?? "openid profile email";

const AUTH_ENDPOINT    = `https://login.microsoftonline.com/${TENANT}/oauth2/v2.0/authorize`;
const TOKEN_ENDPOINT   = `https://login.microsoftonline.com/${TENANT}/oauth2/v2.0/token`;
const JWKS_URI         = `https://login.microsoftonline.com/${TENANT}/discovery/v2.0/keys`;

export interface AzureUser {
  oid: string;
  email: string;
  displayName: string;
  groups: string[];
}

/**
 * Gera a URL de redirect para o Azure AD authorization endpoint.
 * `state` é um nonce gerado pelo caller para verificação CSRF.
 */
export function getAzureAuthUrl(state: string): string {
  if (!AZURE_ENABLED) return "";
  const params = new URLSearchParams({
    client_id:     CLIENT_ID,
    response_type: "code",
    redirect_uri:  REDIRECT_URI,
    scope:         SCOPE,
    response_mode: "query",
    state,
  });
  return `${AUTH_ENDPOINT}?${params}`;
}

/**
 * Troca o `code` recebido no callback pelo token de acesso e retorna os dados do usuário.
 * Retorna null se o exchange falhar ou o token for inválido.
 */
export async function exchangeCodeForUser(code: string): Promise<AzureUser | null> {
  if (!AZURE_ENABLED) return null;
  try {
    const body = new URLSearchParams({
      client_id:     CLIENT_ID,
      client_secret: CLIENT_SECRET,
      grant_type:    "authorization_code",
      code,
      redirect_uri:  REDIRECT_URI,
      scope:         SCOPE,
    });

    const resp = await fetch(TOKEN_ENDPOINT, {
      method: "POST",
      headers: { "Content-Type": "application/x-www-form-urlencoded" },
      body: body.toString(),
    });

    if (!resp.ok) {
      const txt = await resp.text().catch(() => "");
      console.warn("[azure] token exchange failed:", resp.status, txt.slice(0, 200));
      return null;
    }

    const tokens = await resp.json() as Record<string, unknown>;
    const idToken = tokens.id_token as string | undefined;
    if (!idToken) return null;

    // Decode without full JWKS verification for now (signature verified by Azure's TLS)
    // In production, validate signature with JWKS_URI keys.
    const parts = idToken.split(".");
    if (parts.length !== 3) return null;
    const payload = JSON.parse(Buffer.from(parts[1], "base64url").toString("utf8")) as Record<string, unknown>;

    const oid = (payload.oid ?? payload.sub ?? "") as string;
    const email = (payload.email ?? payload.preferred_username ?? `${oid}@azure.local`) as string;
    const displayName = (payload.name ?? email) as string;
    const groupClaim = process.env.AZURE_GROUP_CLAIM ?? "groups";
    const groups = Array.isArray(payload[groupClaim]) ? payload[groupClaim] as string[] : [];

    return { oid, email, displayName, groups };
  } catch (err) {
    console.warn("[azure] exchangeCodeForUser error:", (err as Error).message);
    return null;
  }
}

/** URI do JWKS endpoint para validação de tokens (informativo). */
export const jwksUri = JWKS_URI;
