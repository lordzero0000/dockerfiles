# WAR file fetcher

This repository contains **Dockerfile** of a WAR file fetcher for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/guttertec/tomcat/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

* [guttertec/ubuntu](https://registry.hub.docker.com/u/guttertec/ubuntu/)

## Usage

### Pull

`docker pull guttertec/war-file-fetcher`

### Fetch a WAR file

`docker run -it --name sample guttertec/war-file-fetcher https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war`