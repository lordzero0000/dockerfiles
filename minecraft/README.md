# Minecraft

This repository contains **Dockerfile** of [Java](https://www.java.com/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/guttertec/minecraft/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

* [guttertec/java:openjdk-7-jdk](guttertec/https://registry.hub.docker.com/u/guttertec/java)

### Dependencies

* [guttertec/ubuntu](https://registry.hub.docker.com/u/guttertec/ubuntu/)

## Installation

1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://registry.hub.docker.com/u/guttertec/minecraft/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull guttertec/minecraft` (alternatively, you can build an image from Dockerfile: `docker build -t="guttertec/minecraft" github.com/guttertec/dockerfiles/minecraft`)

## Usage

### Run latest stable version

`docker run -d -p 25565:25565 guttertec/minecraft`

In order to persist the Minecraft data, which you *probably want to do for a real server setup*, use the `-v` argument to map a local path to the `/data' path in the container, such as…

`docker run -d -v /path/on/host:/data -p 25565:25565 guttertec/minecraft`

### Run latest snapshot

`docker run -d -e VERSION=SNAPSHOT -p 25565:25565 guttertec/minecraft`

### Run specific version

`docker run -d -e VERSION=1.7.9 -p 25565:25565 guttertec/minecraft`

### Run latest stable version and change MOTD

`docker run -d -e 'MOTD=My Server' -p 25565:25565 guttertec/minecraft`