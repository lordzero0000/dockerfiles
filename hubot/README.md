# Hubot

This repository contains **Dockerfile** of [Hubot](https://hubot.github.com) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/guttertec/hubot/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

* [guttertec/nodejs](https://registry.hub.docker.com/u/guttertec/nodejs/)

### Dependencies

* [guttertec/python](https://registry.hub.docker.com/u/guttertec/python/)
* [guttertec/ubuntu](https://registry.hub.docker.com/u/guttertec/ubuntu/)

## Installation

1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://registry.hub.docker.com/u/guttertec/hubot/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull guttertec/hubot` (alternatively, you can build an image from Dockerfile: `docker build -t="guttertec/hubot" github.com/guttertec/dockerfiles/hubot`)

## Usage

### Pull

`docker pull guttertec/hubot`

### Build

If you would like to build on local, you should run the following `docker build` command.  
`docker build -t guttertec/hubot .`