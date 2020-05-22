FROM alpine:edge

RUN apk add --no-cache --update && \
    apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing steghide && \
    rm -rf /tmp/* /var/cache/apk/*

ENTRYPOINT ["steghide"]