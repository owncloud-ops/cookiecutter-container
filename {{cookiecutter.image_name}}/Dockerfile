FROM docker.io/alpine:3.18@sha256:7144f7bab3d4c2648d7e59409f15ec52a18006a128c733fcff20d3a4a54ba44a

LABEL maintainer="{{ cookiecutter.author }}"
LABEL org.opencontainers.image.authors="{{ cookiecutter.author }}"
LABEL org.opencontainers.image.title="{{ cookiecutter.image_name | capitalize }}"
LABEL org.opencontainers.image.url="https://github.com/owncloud-ops/{{ cookiecutter.image_name | lower }}"
LABEL org.opencontainers.image.source="https://github.com/owncloud-ops/{{ cookiecutter.image_name | lower }}"
LABEL org.opencontainers.image.documentation="https://github.com/owncloud-ops/{{ cookiecutter.image_name | lower }}"

ARG BUILD_VERSION
ARG CONTAINER_LIBRARY_VERSION

# renovate: datasource=github-releases depName=owncloud-ops/container-library
ENV CONTAINER_LIBRARY_VERSION="${CONTAINER_LIBRARY_VERSION:-v0.1.0}"

ADD overlay/ /

RUN addgroup -g 1001 -S app && \
    adduser -S -D -H -u 1001 -h /opt/app -s /sbin/nologin -G app -g app app

RUN apk --update add --virtual .build-deps curl tar && \
    curl -SsfL "https://github.com/owncloud-ops/container-library/releases/download/${CONTAINER_LIBRARY_VERSION}/container-library.tar.gz" | tar xz -C / && \
    # Further steps to setup the app
    chown -R app:app /opt/app && \
    apk del .build-deps && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

# VOLUME /opt/app

# EXPOSE 8000

# USER app

ENTRYPOINT ["/usr/bin/entrypoint"]
HEALTHCHECK --interval=30s --timeout=5s --retries=3 CMD /usr/bin/healthcheck
# WORKDIR
CMD []
