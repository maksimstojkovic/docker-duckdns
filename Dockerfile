# Base image
FROM alpine:latest

# Maintainer information
ARG VCS_REF
LABEL maintainer="Maksim Stojkovic <https://github.com/silentdigit>" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/silentdigit/docker-duckdns"

# Install tools required
RUN apk add --no-cache curl

# Copy scripts
COPY ./scripts /scripts
WORKDIR /scripts
RUN chmod -R +x /scripts

# Image starting command
CMD ["/bin/sh", "/scripts/start.sh"]
