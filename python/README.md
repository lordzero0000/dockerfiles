# Python

This repository contains **Dockerfile** of [Python](https://www.python.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/guttertec/python/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

* [guttertec/ubuntu](https://registry.hub.docker.com/u/guttertec/ubuntu/)

## Installation

1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://registry.hub.docker.com/u/guttertec/python/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull guttertec/python` (alternatively, you can build an image from Dockerfile: `docker build -t="guttertec/python" github.com/guttertec/dockerfiles/python`)

## Usage

`docker run -it --rm guttertec/python`

### Run `python`

`docker run -it --rm guttertec/python python`