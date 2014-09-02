# CouchPotato

This repository contains **Dockerfile** of [CouchPotato](https://couchpota.to/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/guttertec/couchpotato/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

* [guttertec/python](https://registry.hub.docker.com/u/guttertec/python/)

### Dependencies

* [guttertec/ubuntu](https://registry.hub.docker.com/u/guttertec/ubuntu/)

## Installation

1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://registry.hub.docker.com/u/guttertec/couchpotato/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull guttertec/couchpotato` (alternatively, you can build an image from Dockerfile: `docker build -t="guttertec/couchpotato" github.com/guttertec/dockerfiles/couchpotato`)

## Usage

### Run latest stable version

`docker run -d --net="host" --name="couchpotato" -v /path/to/couchpotato/data:/config -v /path/to/downloads:/downloads -v /path/to/movies:/movies -v /etc/localtime:/etc/localtime:ro -p 5050:5050 guttertec/couchpotato`

### Run latest updates from the master branch

`docker run -d --net="host" --name="couchpotato" -v /path/to/couchpotato/data:/config -v /path/to/downloads:/downloads -v /path/to/movies:/movies -v /etc/localtime:/etc/localtime:ro -e EDGE=1 -p 5050:5050 guttertec/couchpotato`