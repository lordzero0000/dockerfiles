# Ruby

This repository contains **Dockerfile** of [Ruby](https://www.ruby-lang.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/guttertec/ruby/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

* [guttertec/ubuntu](https://registry.hub.docker.com/u/guttertec/ubuntu/)

## Installation

1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://registry.hub.docker.com/u/guttertec/ruby/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull guttertec/ruby` (alternatively, you can build an image from Dockerfile: `docker build -t="guttertec/ruby" github.com/guttertec/dockerfiles/ruby`)

## Usage

`docker run -it --rm guttertec/ruby`

### Run `ruby`

`docker run -it --rm guttertec/ruby ruby`