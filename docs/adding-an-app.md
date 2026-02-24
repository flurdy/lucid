# Adding a New App

## Steps

1. Create `content/<appname>/` directory
2. Add the required pages:
   - `_index.md` — section landing page
   - `privacy.md` — privacy policy
   - `terms.md` — terms of service
   - `support.md` — support/contact page
3. Hugo picks up the new section automatically — no config changes needed

## Front Matter Template

Copy this into each new page and fill in:

```yaml
---
title: "Page Title"
date: 2026-01-01
lastmod: 2026-01-01
description: "Brief description"
---
```

## Content Checklist

- [ ] **Privacy policy** covers App Store requirements:
  - Data collection disclosure (what is/isn't collected)
  - Third-party services used (push notifications, analytics, etc.)
  - COPPA compliance if applicable
  - Contact information
- [ ] **Terms of service** covers:
  - Acceptable use
  - Limitation of liability
  - Governing law
- [ ] **Support page** includes:
  - Contact email (apps@flurdy.com)
  - FAQ for common questions

## Verify Locally

```bash
docker compose up
```

Check that the new pages render at:
- `http://localhost:1313/<appname>/`
- `http://localhost:1313/<appname>/privacy/`
- `http://localhost:1313/<appname>/terms/`
- `http://localhost:1313/<appname>/support/`
