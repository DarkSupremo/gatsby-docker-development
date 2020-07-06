FROM current-alpine3.12
# latest tested version:
# FROM node:14.5.0-alpine3.12

EXPOSE 8000

ARG GATSBY_VERSION=^2.23.20

# Install dev dependencies
RUN set -x \
  && apk add --no-cache \
  g++ \
  git \
  make \
  python3 \
  autoreconf \
  binutils

# Install gatsby cli and cleanup
RUN set -x \
  && npm install --global gatsby@${GATSBY_VERSION} \
  --no-optional gatsby@${GATSBY_VERSION} \
  && npm cache clean --force

RUN mkdir -p /site
WORKDIR /site
VOLUME /site
