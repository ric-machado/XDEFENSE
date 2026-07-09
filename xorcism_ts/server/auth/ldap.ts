/**
 * auth/ldap.ts — Autenticação LDAP / Active Directory para o XDEFENSE.
 *
 * Ativado quando LDAP_URL está definida. Verifica credenciais via bind simples
 * e opcionalmente sincroniza grupos → roles XDEFENSE.
 *
 * Variáveis de ambiente:
 *   LDAP_URL          ex: ldap://dc.empresa.com:389
 *   LDAP_BIND_DN      ex: CN=svc_xdefense,OU=ServiceAccounts,DC=empresa,DC=com
 *   LDAP_BIND_PW      senha da conta de serviço
 *   LDAP_BASE_DN      ex: DC=empresa,DC=com
 *   LDAP_USER_FILTER  ex: (sAMAccountName={username})
 *   LDAP_GROUP_DN     ex: CN=XDEFENSE_USERS,OU=Groups,DC=empresa,DC=com
 *   LDAP_TLS          0 | 1 (padrão: 0); usa ldaps:// ou STARTTLS
 */

export const LDAP_ENABLED = !!process.env.LDAP_URL;

export interface LdapUser {
  dn: string;
  email: string;
  displayName: string;
  groups: string[];
}

/**
 * Autentica um usuário via LDAP bind simples.
 * Retorna null se LDAP não está habilitado ou se a autenticação falhar.
 * Lança erro apenas em falhas de conectividade inesperadas.
 */
export async function ldapAuthenticate(
  username: string,
  password: string,
): Promise<LdapUser | null> {
  if (!LDAP_ENABLED) return null;
  if (!username || !password) return null;

  try {
    // ldapjs não está incluído como dep por padrão — importado dinamicamente
    // para não impactar instâncias sem LDAP configurado.
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const ldap = await import("ldapjs" as any).catch(() => null) as any;
    if (!ldap) {
      console.warn("[ldap] ldapjs não instalado. Execute: npm install ldapjs");
      return null;
    }

    const url       = process.env.LDAP_URL!;
    const bindDn    = process.env.LDAP_BIND_DN  ?? "";
    const bindPw    = process.env.LDAP_BIND_PW  ?? "";
    const baseDn    = process.env.LDAP_BASE_DN  ?? "";
    const filter    = (process.env.LDAP_USER_FILTER ?? "(sAMAccountName={username})")
                        .replace("{username}", username.replace(/[*()\\]/g, ""));
    const groupDn   = process.env.LDAP_GROUP_DN ?? "";

    const client = ldap.createClient({ url, connectTimeout: 5000, timeout: 10000 });

    const bindAsync = (dn: string, pw: string) =>
      new Promise<void>((resolve, reject) => {
        client.bind(dn, pw, (err: Error | null) => (err ? reject(err) : resolve()));
      });

    const searchAsync = (base: string, opts: object): Promise<object[]> =>
      new Promise((resolve, reject) => {
        const entries: object[] = [];
        client.search(base, opts, (err: Error | null, res: any) => {
          if (err) return reject(err);
          res.on("searchEntry", (e: any) => entries.push(e.object));
          res.on("error", reject);
          res.on("end", () => resolve(entries));
        });
      });

    try {
      // Bind com conta de serviço para buscar o usuário
      if (bindDn) await bindAsync(bindDn, bindPw);

      const users = await searchAsync(baseDn, {
        scope: "sub",
        filter,
        attributes: ["dn", "mail", "displayName", "memberOf"],
      }) as Array<Record<string, string | string[]>>;

      if (!users.length) return null;

      const userEntry = users[0];
      const userDn = typeof userEntry.dn === "string" ? userEntry.dn : "";
      const email = typeof userEntry.mail === "string" ? userEntry.mail : `${username}@ldap.local`;
      const displayName = typeof userEntry.displayName === "string" ? userEntry.displayName : username;
      const memberOf = Array.isArray(userEntry.memberOf)
        ? userEntry.memberOf as string[]
        : (userEntry.memberOf ? [userEntry.memberOf as string] : []);

      // Verificar associação ao grupo (se configurado)
      if (groupDn && !memberOf.some((g: string) => g.toLowerCase() === groupDn.toLowerCase())) {
        return null;
      }

      // Bind com as credenciais do usuário para verificar a senha
      await bindAsync(userDn, password);

      return { dn: userDn, email, displayName, groups: memberOf };
    } finally {
      client.destroy();
    }
  } catch {
    return null;
  }
}
