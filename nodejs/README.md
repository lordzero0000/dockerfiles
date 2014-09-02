# Node.js

This repository contains **Dockerfile** of [Node.js](http://nodejs.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/guttertec/nodejs/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

* [guttertec/python](https://registry.hub.docker.com/u/guttertec/python/)

### Dependencies

* [guttertec/ubuntu](https://registry.hub.docker.com/u/guttertec/ubuntu/)

## Installation

1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://registry.hub.docker.com/u/guttertec/nodejs/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull guttertec/nodejs` (alternatively, you can build an image from Dockerfile: `docker build -t="guttertec/nodejs" github.com/guttertec/dockerfiles/nodejs`)

## Usage

`docker run -it --rm guttertec/nodejs`

### Run `node`

`docker run -it --rm guttertec/nodejs node`

### Run `npm`

`docker run -it --rm guttertec/nodejs npm`