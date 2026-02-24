# Architecture

## Overview

Lucid hosts support pages (privacy, terms, support) for mobile apps, starting with TapIn. Built to satisfy App Store requirements for publicly accessible legal and support pages.

Name origin: "lucid" as in lucid dreaming (dreams becoming reality) and clear/intelligible (fitting for legal pages). Sibling project to dreamfactory.

## Decisions

- **Single repo** for all apps (TapIn now, Expire/Shop/etc later)
- **Hugo** static site generator (fast, no Ruby/Node dependency)
- **Docker** for local development (no local Hugo install needed)
- **Cloudflare Pages** for hosting at **apps.flurdy.io**
- **Pico.css** via CDN — classless CSS framework, zero custom CSS

## Project Structure

```
lucid/
├── Dockerfile                  # Dev container for Hugo server
├── docker-compose.yml          # Docker Compose for local dev
├── hugo.toml                   # Hugo config (base URL, theme, menus)
├── content/
│   └── tapin/
│       ├── _index.md           # TapIn landing/index page
│       ├── privacy.md          # Privacy Policy
│       ├── terms.md            # Terms of Service
│       └── support.md          # Support/Contact page
├── layouts/
│   ├── _default/
│   │   ├── baseof.html         # Base layout (head, body wrapper, footer)
│   │   ├── single.html         # Single page template
│   │   └── list.html           # Section list template (app index)
│   └── index.html              # Home page (links to all apps)
└── static/
    └── images/                 # App icons, logos
```

## Hugo Front Matter

Every content page needs:

```yaml
---
title: "Page Title"
date: 2024-01-01
lastmod: 2024-01-01
description: "Brief description"
---
```

Hugo auto-generates URL slugs from filenames — no explicit `slug` field needed unless the URL should differ from the filename.

## URL Structure

| URL | Content |
|-----|---------|
| `apps.flurdy.io/` | Index listing all apps |
| `apps.flurdy.io/tapin/` | TapIn section index |
| `apps.flurdy.io/tapin/privacy/` | Privacy Policy |
| `apps.flurdy.io/tapin/terms/` | Terms of Service |
| `apps.flurdy.io/tapin/support/` | Support & Contact |
