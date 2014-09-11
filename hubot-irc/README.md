# Hubot

This repository contains **Dockerfile** of [Hubot](https://hubot.github.com) with [Hubot IRC adapter](https://github.com/nandub/hubot-irc) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/guttertec/hubot/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

* [guttertec/hubot-scripts](https://registry.hub.docker.com/u/guttertec/hubot/)

### Dependencies

* [guttertec/hubot](https://registry.hub.docker.com/u/guttertec/hubot/)
* [guttertec/nodejs](https://registry.hub.docker.com/u/guttertec/nodejs/)
* [guttertec/python](https://registry.hub.docker.com/u/guttertec/python/)
* [guttertec/ubuntu](https://registry.hub.docker.com/u/guttertec/ubuntu/)

# Dockerfile for Hubot IRC adapter

## Usage

### Pull

`docker pull guttertec/hubot-irc`

### Build

If you would like to build on local, you should run the following `docker build` command.

`docker build -t guttertec/hubot-irc .`

### Run

**join IRC (requires two environment values `HUBOT_IRC_SERVER` and `HUBOT_IRC_ROOMS`)**  

`docker run -e HUBOT_IRC_SERVER=<YOUR_HUBOT_IRC_SERVER> -e HUBOT_IRC_ROOMS=#<YOUR_HUBOT_IRC_ROOM> -p 9980:9980 -td guttertec/hubot-irc`

**with name option (requires environment value `HUBOT_IRC_NICK`**  

`docker run -e HUBOT_IRC_SERVER=<YOUR_HUBOT_IRC_SERVER> -e HUBOT_IRC_ROOMS=#<YOUR_HUBOT_IRC_ROOM> -e HUBOT_IRC_NICK=<YOUR_IRC_NICK> -p 9980:9980 -td guttertec/hubot-irc

### HTTP Listener

* Since `PORT` environment is `9980` and exposed port `9980`, you can access HTTP listener
    * ex: `http://<HOST_MACHINE_IP (or HOSTNAME)>:9980/hubot/version` by GET method.