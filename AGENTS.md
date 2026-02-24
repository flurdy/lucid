# Lucid - Agent Instructions

## Project Overview

Lucid is a Hugo static site hosting support pages (privacy, terms, support) for mobile apps. Deployed to Cloudflare Pages at apps.flurdy.io.

## Documentation

- **[PLAN.md](PLAN.md)** - Project plan, decisions, and structure
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
- **Shell**: Fish Shell
- **Editor**: VS Code

### Running the Site

```bash
docker compose up
```

Site available at http://localhost:1313 with live reload.

### Hugo Structure

- `hugo.toml` - Site configuration
- `content/` - Markdown pages organized by app (e.g., `content/tapin/`)
- `layouts/` - HTML templates (`_default/baseof.html`, `single.html`, `list.html`)
- `static/` - Static assets (images, etc.)

### Hugo Front Matter

Every content page needs:

```yaml
---
title: "Page Title"
date: 2024-01-01
lastmod: 2024-01-01
description: "Brief description"
---
```

### Adding a New App

1. Create `content/<appname>/` with `_index.md`, `privacy.md`, `terms.md`, `support.md`
2. Hugo picks it up automatically

### Command Conventions

- Avoid chaining several commands unnecessarily. It makes it easy to miss harmful commands.
