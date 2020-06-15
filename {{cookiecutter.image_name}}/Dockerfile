FROM alpine

LABEL maintainer="{{ cookiecutter.author }}" \
    org.label-schema.name="{{ cookiecutter.image_name | capitalize }}" \
    org.label-schema.vendor="{{ cookiecutter.author }}" \
    org.label-schema.schema-version="1.0"


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
