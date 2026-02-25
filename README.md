# Lucid

A project to host project information pages for mobile apps and projects that do can not include public pages themselves.

Designed to be basic and simple. The value is within the app's own pages.

## Dream factory heritance

Dreamfactory is a project to list ideas and status of pet projects [github.com/flurdy/dreamfactory](https://github.com/flurdy/dreamfactory).

It is what runs on [code.flurdy.com](https://code.flurdy.com).

Lucid was create when a requirement for some apps listed in code.flurdy.com needed have further information online, but they did not have a public website, which is often the case for mobile apps.

## Live site

[apps.flurdy.io](https://apps.flurdy.io)

## Run

1. Fork project 
   
   ```bash
   git clone https://github.com/flurdy/lucid.git
   cd lucid
   ``` 

2. Start Hugo in in docker compose
  
   ```bash
   docker compose up
   ```

3. Open `http://localhost:1313`

## Architecture

See [docs/architecture](docs/architecture.md)

## Add app

Follow [docs/adding-an-app.md](docs/adding-an-app.md)

## Contribute

- Read [CONTRIBUTE.md](CONTRIBUTE.md)

## License

The Lucid application (Hugo configuration, templates, theme, and tooling) is licensed under [MIT](LICENSE) 2026. The content of individual app pages (privacy policies, terms of service, support pages, etc.) is not covered by this license.

## Creator 

Ivar Abrahamsen/@flurdy: [flurdy.com](https:/flurdy.com)
