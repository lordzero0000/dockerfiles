# Node.js

This repository contains **Dockerfile** of [Node.js](http://nodejs.org/) and [Johnny-Five](https://github.com/rwaldron/johnny-five/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/guttertec/johnny-five/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

* [guttertec/python](https://registry.hub.docker.com/u/guttertec/python/)

### Dependencies

* [guttertec/ubuntu](https://registry.hub.docker.com/u/guttertec/ubuntu/)

## Installation

1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://registry.hub.docker.com/u/guttertec/nodejs/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull guttertec/johnny-five` (alternatively, you can build an image from Dockerfile: `docker build -t="guttertec/johnny-five" github.com/guttertec/dockerfiles/johnny-five`)
