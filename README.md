# Fenghao Yu — Personal Homepage

This repository contains the source for Fenghao Yu's academic homepage. It is based on [EmpathYang/empathyang.github.io](https://github.com/EmpathYang/empathyang.github.io) and the al-folio Jekyll theme.

## Content

- `_config.yml`: site identity and settings
- `_pages/about.md`: biography, affiliations, research interests, and profile image
- `_data/socials.yml`: contact and social links
- `_news/`: news entries
- `_bibliography/papers.bib`: publications and related links
- `assets/img/`: profile and publication images

See [LOCAL_SETUP.md](LOCAL_SETUP.md) for local setup instructions.

## Deployment

Updates to the `main` branch are built with Ruby 3.4.4 and deployed to GitHub Pages through GitHub Actions. In the repository settings, Pages should use **GitHub Actions** as its source.

## Local preview

With Ruby 3.4 installed:

```sh
gem install bundler -v 4.0.6
bundle install
bundle exec jekyll serve --config _config.yml,_config.local.yml
```

You can also run `preview.command` from the project folder.

The original MIT license and source attribution are preserved in [SOURCE_PROVENANCE.md](SOURCE_PROVENANCE.md) and [LICENSE](LICENSE).
