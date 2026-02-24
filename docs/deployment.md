# Deployment

## Cloudflare Pages

Configured in the Cloudflare dashboard — no wrangler.toml needed.

- **Build command:** `hugo`
- **Output directory:** `public`
- **Environment variable:** `HUGO_VERSION` = latest stable
- **Source:** GitHub repo `flurdy/lucid`, branch `main`
- **Domain:** apps.flurdy.io

Auto-deploys on every push to `main`.

## Verification

Before pushing to main:

1. `docker compose up` — all pages render at http://localhost:1313, links work, styling looks clean
2. Check each app's pages load at the correct URL paths
3. Verify privacy policy content covers App Store requirements (data collection, third-party services, contact info)
4. `docker compose run --rm hugo hugo` — build completes with no errors/warnings
