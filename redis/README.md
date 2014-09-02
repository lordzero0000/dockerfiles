# Redis

This repository contains **Dockerfile** of [Redis](http://redis.io/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/guttertec/redis/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

* [guttertec/ubuntu](https://registry.hub.docker.com/u/guttertec/ubuntu/)

## Installation

1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://registry.hub.docker.com/u/guttertec/redis/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull guttertec/redis` (alternatively, you can build an image from Dockerfile: `docker build -t="guttertec/redis" github.com/guttertec/dockerfiles/redis`)


## Usage

### Run `redis-server`

`docker run -d --name redis -p 6379:6379 guttertec/redis`

### Run `redis-server` with persistent data directory. (creates `dump.rdb`)

`docker run -d -p 6379:6379 -v <data-dir>:/data --name redis guttertec/redis`

### Run `redis-server` with persistent data directory and password.

`docker run -d -p 6379:6379 -v <data-dir>:/data --name redis guttertec/redis redis-server /etc/redis/redis.conf --requirepass <password>`

### Run `redis-cli`

`docker run -it --rm --link redis:redis guttertec/redis bash -c 'redis-cli -h redis'`