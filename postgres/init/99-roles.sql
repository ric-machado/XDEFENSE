-- Permissões finais — executado após todas as tabelas serem criadas.
-- Garante que o role xdefense_app tenha acesso a todos os objetos.

DO $$
DECLARE
  s TEXT;
  schemas TEXT[] := ARRAY[
    'xorcism','xvulnerability','xattack','xmalware','xincident',
    'xthreat','xoval','xwindows','xcompliance','xticket','xid','xjob','xagent'
  ];
BEGIN
  FOREACH s IN ARRAY schemas LOOP
    -- Acesso ao schema
    EXECUTE format('GRANT USAGE ON SCHEMA %I TO xdefense_app', s);
    -- Acesso a todas as tabelas existentes
    EXECUTE format('GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA %I TO xdefense_app', s);
    -- Acesso a todas as sequences existentes
    EXECUTE format('GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA %I TO xdefense_app', s);
    -- Privilégios padrão para objetos criados no futuro
    EXECUTE format('ALTER DEFAULT PRIVILEGES IN SCHEMA %I GRANT ALL PRIVILEGES ON TABLES TO xdefense_app', s);
    EXECUTE format('ALTER DEFAULT PRIVILEGES IN SCHEMA %I GRANT ALL PRIVILEGES ON SEQUENCES TO xdefense_app', s);
  END LOOP;
END;
$$;
