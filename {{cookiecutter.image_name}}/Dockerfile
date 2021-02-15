FROM alpine

LABEL maintainer="{{ cookiecutter.author }}"
LABEL org.opencontainers.image.authors="{{ cookiecutter.author }}"
LABEL org.opencontainers.image.title="{{ cookiecutter.image_name | capitalize }}"
LABEL org.opencontainers.image.url="https://github.com/owncloud-ops/{{ cookiecutter.image_name | lower }}"
LABEL org.opencontainers.image.source="https://github.com/owncloud-ops/{{ cookiecutter.image_name | lower }}"
LABEL org.opencontainers.image.documentation="https://github.com/owncloud-ops/{{ cookiecutter.image_name | lower }}"

ARG BUILD_VERSION=

ADD overlay/ /

# put your RUN block here


# VOLUME /opt/app

# EXPOSE 8000

# USER app

ENTRYPOINT ["/usr/bin/entrypoint"]
HEALTHCHECK --interval=30s --timeout=5s --retries=3 CMD /usr/bin/healthcheck
# WORKDIR
CMD []
