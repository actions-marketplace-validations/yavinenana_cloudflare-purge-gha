FROM alpine:latest

LABEL "com.github.actions.name"="yavinenana-cloudflare-purge-cache"
LABEL "com.github.actions.description"="Purge a zone's cache via the Cloudflare API"
LABEL "com.github.actions.icon"="trash-2"
LABEL "com.github.actions.color"="orange"

LABEL version="1.0.0"

RUN apk update && apk add openssl curl
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
