# Hubot

This repository contains **Dockerfile** of [Hubot](https://hubot.github.com) with [Hubot Slack adapter](https://github.com/slackhq/hubot-slack) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/guttertec/hubot/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

* [guttertec/hubot-scripts](https://registry.hub.docker.com/u/guttertec/hubot/)

### Dependencies

* [guttertec/hubot](https://registry.hub.docker.com/u/guttertec/hubot/)
* [guttertec/nodejs](https://registry.hub.docker.com/u/guttertec/nodejs/)
* [guttertec/python](https://registry.hub.docker.com/u/guttertec/python/)
* [guttertec/ubuntu](https://registry.hub.docker.com/u/guttertec/ubuntu/)

# Dockerfile for Hubot Slack adapter

## Usage

### Build

If you would like to build on local, you should run the following `docker build` command.

`docker build -t hubot-slack .`

### Run

**join Slack (requires one environment values `HUBOT_SLACK_TOKEN`)**  

`docker run -e HUBOT_NAME=<YOUR_HUBOT_NAME> -e HUBOT_SLACK_TOKEN=<YOUR_SLACK_TOKEN> -p 9980:9980 -td hubot-slack`

### HTTP Listener

* Since `PORT` environment is `9980` and exposed port `9980`, you can access HTTP listener
    * ex: `http://<HOST_MACHINE_IP (or HOSTNAME)>:9980/hubot/version` by GET method.
