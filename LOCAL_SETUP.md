# Local setup

This site uses the original Jekyll and al-folio structure from [EmpathYang/empathyang.github.io](https://github.com/EmpathYang/empathyang.github.io), including its layout, colors, typography, background effects, theme switcher, search, and publication components.

## Preview the site

Run `preview.command`, then open `http://127.0.0.1:4000/`. Keep the terminal window open while previewing and press Control+C to stop the server.

This workspace includes Ruby 3.4.4 and Bundler 4.0.6 under `work/runtime/`, with project dependencies installed in `vendor/bundle/`. The preview script selects that runtime automatically. If the source is moved to another machine, install Ruby and run `bundle install` again.

## Update content

| Content | File |
| --- | --- |
| Site identity and metadata | `_config.yml` |
| Biography, affiliation, research interests, and profile image | `_pages/about.md` |
| Contact and social accounts | `_data/socials.yml` |
| News | `_news/` |
| Publications | `_bibliography/papers.bib` |
| Profile image | `assets/img/` |
| Publication images | `assets/img/publication_preview/` |
| CV and PDFs | `assets/pdf/` |

Unconfigured contact icons remain visible as disabled placeholders. Add real values to `_data/socials.yml` to replace them with working links.

Publication entries use BibTeX. The `preview` field names the publication image, and `selected = {true}` includes the item on the homepage.

## Deployment

GitHub Actions builds the `main` branch with Ruby 3.4.4 and deploys the site to `https://arioyu-0001.github.io/`. Source attribution and license information are retained in [SOURCE_PROVENANCE.md](SOURCE_PROVENANCE.md) and [LICENSE](LICENSE).
