# Minimal Docker image for Minimap2 using Alpine base
FROM alpine:latest

# install Minimap2
RUN apk update && \
    apk add bash gcc make musl-dev zlib-dev && \
    wget -qO- "https://github.com/lh3/minimap2/archive/refs/tags/v2.31.tar.gz" | tar -zx && \
    cd minimap2-* && \
    make && \
    chmod a+x minimap2 && \
    mv minimap2 /usr/local/bin/minimap2 && \
    cd .. && \
    rm -rf minimap2-*
