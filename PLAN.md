# Lucid — Hugo Static Site for Mobile App Support Pages

## Context

Mobile apps (starting with TapIn) need publicly accessible pages for App Store requirements: privacy policy, terms of service, and a support/contact page. Rather than extending dreamfactory (a Scala/Play project catalog), we're creating a lightweight sibling project called **Lucid** — as in lucid dreaming (dreams becoming reality) and clear/intelligible (fitting for legal pages).

## Decisions Made

- **Single repo** hosting pages for all apps (TapIn now, Expire/Shop/etc later)
- **Hugo** static site generator (fast, no Ruby/Node dependency)
- **Docker** for local development (no local Hugo install needed)
- **Cloudflare Pages** for hosting
- **apps.flurdy.io** subdomain

## Project Location

`/home/ivar/Code/flurdy/lucid/` (new sibling to dreamfactory, tapin, etc.)

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
│   │   ├── single.html         # Single page template (for policy/terms/support)
│   │   └── list.html           # Section list template (app index page)
│   └── index.html              # Home page (links to all apps)
├── static/
│   └── images/                 # App icons, logos
├── AGENTS.md
├── .gitignore
└── README.md
```

## Completed

- ~~Set up Docker environment~~ — Dockerfile (`hugomods/hugo:exts`) and docker-compose.yml created
- ~~Initialize git repo~~ — with .gitignore, AGENTS.md, CLAUDE.md, docs/
- ~~Set up beads issue tracking~~ — with custom PRIME.md (no auto-push)

## Steps

### 1. Scaffold Hugo project
- Create `hugo.toml` with base URL `https://apps.flurdy.io`, title, and params
- Create directory structure: `content/tapin/`, `layouts/_default/`, `static/images/`

### 2. Create minimal layouts (no external theme)
- **baseof.html**: Clean HTML5 skeleton with a `<link>` to a classless CSS framework (Pico.css via CDN) for instant styling with zero custom CSS
- **single.html**: Renders page title, last-updated date, and markdown content
- **list.html**: App section index — lists child pages (privacy, terms, support)
- **index.html** (home): Simple page listing all apps with links to their sections

### 3. Create TapIn content pages
- **privacy.md**: Privacy policy for TapIn (based on the nisrulz generator or a standard template, tailored for a messaging-style app that doesn't collect personal data beyond what Expo/React Native defaults provide)
- **terms.md**: Terms of service
- **support.md**: Support/contact page with email contact info
- Each page has Hugo front matter: `title`, `date`, `lastmod`, `description`

### 4. Add Cloudflare Pages configuration
- The Cloudflare Pages build settings will be:
  - Build command: `hugo`
  - Build output directory: `public`
  - Environment variable: `HUGO_VERSION` = latest stable

### 5. Test locally with Docker
- Run `docker compose up` and verify all pages render at http://localhost:1313
- Verify URL structure: `/tapin/privacy/`, `/tapin/terms/`, `/tapin/support/`

### 6. Create private GitHub repo
- Create private repo `flurdy/lucid` on GitHub
- Add remote origin and push main branch
- Set up upstream tracking

## Adding a New App Later

To add pages for another app (e.g. Expire):
1. Create `content/expire/` with `_index.md`, `privacy.md`, `terms.md`, `support.md`
2. That's it — Hugo picks it up automatically

## URL Structure (Final)

| URL | Content |
|-----|---------|
| `apps.flurdy.io/` | Index listing all apps |
| `apps.flurdy.io/tapin/` | TapIn section index |
| `apps.flurdy.io/tapin/privacy/` | TapIn Privacy Policy |
| `apps.flurdy.io/tapin/terms/` | TapIn Terms of Service |
| `apps.flurdy.io/tapin/support/` | TapIn Support & Contact |

## Verification

1. `docker compose up` — all pages render at http://localhost:1313, links work, styling looks clean
2. Check each TapIn page loads at the correct URL path
3. Verify the privacy policy content covers App Store requirements (data collection disclosure, third-party services, contact info)
4. `docker compose run --rm hugo hugo` — build completes with no errors/warnings
