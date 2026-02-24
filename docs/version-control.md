# Version Control

## Repository

- **Main branch:** `main`

## Branching

- Feature branches off `main`
- Minor changes can be made directly on `main` if necessary, but prefer feature branches for larger changes
- PRs merged back to `main`

## Staging Changes

- **Do not use `git add -A` to stage changes**, instead stage specific files to avoid accidentally including unrelated changes.
- **Do not add root folders only**, instead specify files or only smaller folders.
- **Do not revert unrelated changes in the working directory before staging**, as this can lead to confusion and loss of work. Instead use stash or commit unrelated changes separately.

### Good staging examples

```bash
git add layouts/_default/single.html
git add content/tapin/privacy.md content/tapin/terms.md
```

### Bad staging examples

```bash
git add -A
git add .
git add layouts/
```

## No Pushes to Main

- Pushes to 'main' to be done by maintainers only.

## Commit Style

- Use conventional commit messages where appropriate (e.g. `feat:`, `fix:`, `docs:`, `chore:`).
- Keep commit messages concise and descriptive of the change.
