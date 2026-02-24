.PHONY: dev stop build clean

dev: ## Start local dev server at http://localhost:1313
	docker compose up

stop: ## Stop dev server
	docker compose down

build: ## Build site to public/
	docker compose run --rm hugo hugo

clean: ## Remove generated public/ directory
	docker compose run --rm hugo rm -rf public/

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## ' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  %-10s %s\n", $$1, $$2}'
