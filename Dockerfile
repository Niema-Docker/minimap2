# Minimal Docker image for Minimap2 using Alpine base
FROM alpine:3.13.5
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install Minimap2
RUN apk update && \
    apk add bash && \
    wget -qO- "https://github.com/lh3/minimap2/releases/download/v2.24/minimap2-2.24_x64-linux.tar.bz2" | tar -jx && \
    mv minimap2-*/minimap2 /usr/local/bin/minimap2 && \
    rm -rf minimap2-*
