FROM node:alpine

LABEL author="Bobjoy<bobjoy1010@qq.com>"

COPY repositories /etc/apk/repositories

RUN apk add --update --no-cache \
    ca-certificates \
    curl \
    wget \
    cmake \
    build-base \
    git \
    bash \
    python \
    make \
    gcc \
    g++ \
    zlib-dev \
    autoconf \
    automake \
    file \
    nasm \
  && update-ca-certificates \
  && rm -rf /var/cache/apk/*
