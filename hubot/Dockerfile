############################################################
# Dockerfile file to build Hubot container images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# Pull base image.
FROM guttertec/nodejs
MAINTAINER Axel Quack <mail@axelquack.de>

# Install CoffeeScript, Hubot
RUN \
  npm install -g coffee-script hubot && \
  apt-get install -y redis-server

# Create Hubot
WORKDIR /root
RUN hubot --create mybot
WORKDIR /root/mybot
RUN npm install