# mkdocs-material

Mkdocs is a fast, simple static site generator. [Mkdocs-Material](https://squidfunk.github.io/mkdocs-material/) is a theme and many additions to Mkdocs which makes technical documentation easier to write and read.

We wanted to add more features over the [Official mkdocs-material image](https://hub.docker.com/r/squidfunk/mkdocs-material/) by installing [PyMdown Extensions](https://facelessuser.github.io/pymdown-extensions/) and more.


## How to include extensions in your mkdocs.yml

Here is an example, feel free to customize your setup based on [mkdocs-material reference guide](https://squidfunk.github.io/mkdocs-material/reference/abbreviations/)

```yaml
# Material-Mkdocs Extensions:
markdown_extensions:
  - admonition
  - sane_lists
  - codehilite
  - pymdownx.superfences
  - pymdownx.tabbed
  - pymdownx.tilde
  - pymdownx.details
  - plantuml_markdown:
      server: http://www.plantuml.com

# Mkdocs Plugins:
plugins:
  - search
  - git-revision-date-localized
```

## Maintainer

laurent.indermuehle@epfl.ch
