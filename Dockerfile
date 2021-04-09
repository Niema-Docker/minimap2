# Minimal Docker image for Minimap2 v2.17 using Alpine base
FROM alpine:latest
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install Minimap2
RUN apk update && \
    apk add gcc make musl-dev zlib-dev && \
    wget -qO- "https://github.com/lh3/minimap2/archive/refs/tags/v2.17.tar.gz" | tar -zx && \
    cd minimap2-2.17 && \
    make && \
    chmod a+x minimap2 && \
    mv minimap2 /usr/local/bin/minimap2 && \
    cd .. \
    rm -rf minimap2-2.17
