FROM alpine:latest

RUN apk -U add git \
    && rm -rf /var/lib/apt/lists/* \
    && rm /var/cache/apk/*

COPY git-mirror-repository /usr/bin/
RUN chmod 700 /usr/bin/git-mirror-repository