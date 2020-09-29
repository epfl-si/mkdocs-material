FROM docker.io/squidfunk/mkdocs-material:6.0.1
LABEL maintainer="laurent.indermuehle@epfl.ch"
WORKDIR /tmp

# URL of dependencies releases:
# plantuml-markdown:      https://github.com/mikitex70/plantuml-markdown/releases
# [...]-localized-plugin: https://github.com/timvink/mkdocs-git-revision-date-localized-plugin/releases
# pymdown-extensions:     https://github.com/facelessuser/pymdown-extensions/releases
# Pygments:               https://github.com/pygments/pygments/releases

RUN pip install --no-cache-dir                         \
    'plantuml-markdown==3.4.0'                         \
    'mkdocs-git-revision-date-localized-plugin==0.7.2' \
    'pymdown-extensions==8.0.1'                        \
    'pygments==2.7.1'                                  \
    && rm -rf /tmp/*
WORKDIR /docs
VOLUME /docs
EXPOSE 8000
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=localhost:8000"]
