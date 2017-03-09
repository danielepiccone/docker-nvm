FROM debian:jessie

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    build-essential \
    ca-certificates \
    curl \
    g++ \
    gcc \
    git \
    make \
    sudo \
    wget \
    python-all \
    && rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-l", "-c"]

ENV NVM_DIR=/usr/local/nvm

COPY . /src/
WORKDIR /src

RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

RUN [ -f .nvmrc ] && \
	nvm install && nvm use || \
  nvm install stable && nvm use stable
