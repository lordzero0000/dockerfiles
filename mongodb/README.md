# MongoDB

This repository contains **Dockerfile** of [MongoDB](http://www.mongodb.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/guttertec/mongodb/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

* [guttertec/ubuntu](https://registry.hub.docker.com/u/guttertec/ubuntu/)

## Installation

1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://registry.hub.docker.com/u/guttertec/mongodb/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull guttertec/mongodb` (alternatively, you can build an image from Dockerfile: `docker build -t="guttertec/mongodb" github.com/guttertec/dockerfiles/mongodb`)

## Usage

### Run `mongod`

`docker run -d -p 27017:27017 --name mongodb guttertec/mongodb`

### Run `mongod` with persistent/shared directory

`docker run -d -p 27017:27017 -v <db-dir>:/data/db --name mongodb guttertec/mongodb`

### Run `mongod` with HTTP support

`docker run -d -p 27017:27017 -p 28017:28017 --name mongodb guttertec/mongodb mongod --rest --httpinterface`

### Run `mongo`

`docker run -it --rm --link mongodb:mongodb guttertec/mongodb bash -c 'mongo --host mongodb'`

## Usage with VirtualBox (boot2docker-vm)

You will need to set up nat port forwarding with:  
`VBoxManage modifyvm "boot2docker-vm" --natpf1 "guestmongodb,tcp,127.0.0.1,27017,,27017"`

This will allow you to connect to your mongo container with the standard `mongo` commands.