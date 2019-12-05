# Base image
FROM alpine:latest

# Install tools required
RUN apk add --no-cache curl

# Copy scripts
WORKDIR /scripts
COPY ./scripts /scripts
RUN chmod -R +x /scripts

# Image starting command
CMD ["/bin/sh", "/scripts/start.sh"]
