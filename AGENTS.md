# Lucid - Agent Instructions

## Project Overview

Lucid is a Hugo static site hosting support pages (privacy, terms, support) for mobile apps. Deployed to Cloudflare Pages at apps.flurdy.io.

## Documentation

- **[docs/architecture.md](docs/architecture.md)** - Project structure, Hugo conventions, URL scheme
- **[docs/deployment.md](docs/deployment.md)** - Cloudflare Pages build settings, verification
- **[docs/adding-an-app.md](docs/adding-an-app.md)** - Step-by-step guide for adding a new app
- **[docs/task-management.md](docs/task-management.md)** - Development workflow and issue tracking
- **[docs/version-control.md](docs/version-control.md)** - Branching, staging, and commit conventions

Documentation principles:

- Keep documentation terse with bullet points
- No wall of text
- Update docs when making significant changes

## Task Management

Load and follow `docs/task-management.md` — it defines the required development workflow phases.

## Version Control

Load and follow `docs/version-control.md` — it defines branching, staging, and commit conventions.

## Local Development

### Environment

- **OS**: Fedora Linux
- **Editor**: VS Code

### Running the Site

```bash
docker compose up
```

Site available at http://localhost:1313 with live reload.

## Deployment

- **Cloudflare Pages** — auto-deploys on push to `main`
- **Do not push to main without user approval** — triggers production deploy
- See [docs/deployment.md](docs/deployment.md) for build settings and verification

### Command Conventions

- Avoid chaining several commands unnecessarily. It makes it easy to miss harmful commands.
