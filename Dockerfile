FROM alpine:3.3
MAINTAINER Doug Hardy <do0g.dev@gmail.com>

RUN apk update \
 && apk add jq \
 && rm -rf /var/cache/apk/*

RUN mkdir /app
WORKDIR /app

ENTRYPOINT ["/usr/bin/jq"]