# Hubot Scripts

This repository contains **Dockerfile** of [Hubot Scripts](https://github.com/github/hubot-scripts) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/guttertec/hubot-scripts/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

* [guttertec/hubot](https://registry.hub.docker.com/u/guttertec/hubot/)

### Dependencies

* [guttertec/python](https://registry.hub.docker.com/u/guttertec/python/)
* [guttertec/nodejs](https://registry.hub.docker.com/u/guttertec/nodejs/)
* [guttertec/ubuntu](https://registry.hub.docker.com/u/guttertec/ubuntu/)

## Installation

1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://registry.hub.docker.com/u/guttertec/hubot-scripts/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull guttertec/hubot-scripts` (alternatively, you can build an image from Dockerfile: `docker build -t="guttertec/hubot-scripts" github.com/guttertec/dockerfiles/hubot-scripts`)

## Usage

### Pull

`$ docker pull guttertec/hubot-scripts`

### Build

`$ docker build -t guttertec/hubot-scripts .`