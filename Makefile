# XDEFENSE — Makefile de conveniência
.PHONY: up down restart logs shell-db shell-backend build backup ps clean setup help

# Detecta docker compose v2
COMPOSE := docker compose

##@ Setup
setup: ## Executa o setup completo (gera .env, SSL, sobe tudo)
	@bash scripts/setup.sh

setup-reset: ## Regenera credenciais e reconfigura
	@bash scripts/setup.sh --reset

##@ Stack
up: ## Sobe toda a stack
	$(COMPOSE) up -d

up-ai: ## Sobe a stack incluindo Ollama + Open WebUI
	$(COMPOSE) --profile ai up -d

down: ## Para e remove todos os containers
	$(COMPOSE) down

restart: ## Reinicia todos os containers
	$(COMPOSE) restart

build: ## Rebuild das imagens sem cache
	$(COMPOSE) build --no-cache

##@ Monitoramento
logs: ## Acompanha logs de todos os serviços
	$(COMPOSE) logs -f --tail=100

logs-backend: ## Logs apenas do backend
	$(COMPOSE) logs -f --tail=100 backend

logs-postgres: ## Logs do PostgreSQL
	$(COMPOSE) logs -f --tail=50 postgres

ps: ## Status de todos os containers
	$(COMPOSE) ps

##@ Banco de Dados
shell-db: ## psql interativo no PostgreSQL
	$(COMPOSE) exec postgres psql -U postgres -d xdefense

schemas: ## Lista os 13 schemas do PostgreSQL
	$(COMPOSE) exec postgres psql -U postgres -d xdefense -c "\dn"

tables: ## Lista tabelas de um schema (uso: make tables SCHEMA=xorcism)
	$(COMPOSE) exec postgres psql -U postgres -d xdefense -c "\dt $(SCHEMA).*"

##@ Shells
shell-backend: ## Shell interativo no container do backend
	$(COMPOSE) exec backend sh

shell-python: ## Shell Python no container de connectors
	$(COMPOSE) exec connector-runner bash

##@ Backup & Restore
backup: ## Dispara backup manual do PostgreSQL
	$(COMPOSE) exec backup sh /usr/local/bin/backup.sh

restore: ## Restaura um backup (uso: make restore FILE=xdefense_20250101_000000.dump)
	@test -n "$(FILE)" || (echo "Uso: make restore FILE=nome_do_arquivo.dump" && exit 1)
	$(COMPOSE) exec -T postgres pg_restore -U postgres -d xdefense -c /backups/$(FILE)
	@echo "Restore concluído. Reinicie os serviços: make restart"

##@ Manutenção
clean: ## Remove imagens locais XDEFENSE
	docker rmi xdefense-backend xdefense-taxii xdefense-connectors xdefense-scheduler 2>/dev/null || true

clean-volumes: ## CUIDADO: remove todos os volumes (perde dados!)
	@echo "ATENÇÃO: Isso apagará TODOS os dados. Confirme com: make clean-volumes-confirm"

clean-volumes-confirm: ## Confirma remoção de volumes
	$(COMPOSE) down -v

update: ## Atualiza imagens base e rebuilda
	$(COMPOSE) pull
	$(COMPOSE) build --no-cache
	$(COMPOSE) up -d

##@ Diagnóstico
doctor: ## Valida health checks e conectividade
	@echo "=== Status dos containers ==="
	$(COMPOSE) ps
	@echo "\n=== Health checks ==="
	@curl -sk https://localhost/health && echo " ✓ Nginx" || echo " ✗ Nginx"
	@curl -sk https://localhost/login -o /dev/null -w "%{http_code}" | grep -q "200\|302" && echo " ✓ Backend" || echo " ✗ Backend"
	@curl -sk https://localhost/taxii2/ -o /dev/null -w "%{http_code}" | grep -q "200" && echo " ✓ TAXII" || echo " ✗ TAXII"
	@$(COMPOSE) exec -T postgres pg_isready -U postgres -d xdefense && echo " ✓ PostgreSQL" || echo " ✗ PostgreSQL"
	@$(COMPOSE) exec -T redis redis-cli -a "$$(grep REDIS_PASSWORD .env | cut -d= -f2)" ping 2>/dev/null | grep -q PONG && echo " ✓ Redis" || echo " ✗ Redis"

help: ## Exibe esta ajuda
	@awk 'BEGIN {FS = ":.*##"; printf "\n\033[1mXDEFENSE — Comandos disponíveis:\033[0m\n\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help
