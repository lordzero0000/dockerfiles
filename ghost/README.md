# Ghost

This repository contains **Dockerfile** of [Ghost](https://www.ghost.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/guttertec/ghost/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

* [guttertec/nodejs](https://registry.hub.docker.com/u/nodejs/python/)

### Dependencies

* [guttertec/python](https://registry.hub.docker.com/u/guttertec/python/)
* [guttertec/ubuntu](https://registry.hub.docker.com/u/guttertec/ubuntu/)

## Installation

1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://registry.hub.docker.com/u/guttertec/ghost/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull guttertec/ghost` (alternatively, you can build an image from Dockerfile: `docker build -t="guttertec/ghost" github.com/guttertec/dockerfiles/ghost`)

## Usage

`docker run -d -p 80:2368 guttertec/ghost`

#### Customizing Ghost

`docker run -d -p 80:2368 -v <override-dir>:/ghost-override guttertec/ghost`

where `<override-dir>` is an absolute path of a directory that could contain:

* `config.js`: custom config file copied from [here](https://github.com/TryGhost/Ghost/blob/master/config.example.js) (you must replace `127.0.0.1` with `0.0.0.0`)
* `content/data/`: persistent/shared data
* `content/images/`: persistent/shared images
* `content/themes/`: more themes

After few seconds, open `http://<host>` for blog or `http://<host>/ghost` for admin page.