# Lucid - Agent Instructions

## Project Overview

Lucid is a Hugo static site hosting support pages (privacy, terms, support) for mobile apps. Deployed to Cloudflare Pages at apps.flurdy.io.

## Documentation

- **PLAN.md** - Project plan, decisions, and structure
- Tasks are tracked in **beads** (`.beads/`)

Documentation principles:

- Keep documentation terse with bullet points
- No wall of text
- Update docs when making significant changes

## Issue Tracking

This project uses **bd (beads)** for issue tracking.
Run `bd prime` for workflow context.

Quick reference:
- `bd ready` - Find unblocked work
- `bd create --title="Title" --type task --priority 2` - Create issue
- `bd close <id>` - Complete work
- `bd sync` - Sync with git

## Version Control with Git

### Staging

**CRITICAL - Be specific about which files to stage**

- **Never use `git add -A`**
- **Never use `git add .`**
- **Never use `git commit -a`**
- Only add individual files or list of files

### Commits

- Keep commits small and focused
- Write terse, clear commit messages
- Use Conventional Commits (e.g., `feat:`, `fix:`, `docs:`, `chore:`)

### Remote Operations

- **NEVER `git push` without being told to**
- **NEVER append `&& git push` or `&& git pull` to any command**
- `git fetch` is allowed

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
