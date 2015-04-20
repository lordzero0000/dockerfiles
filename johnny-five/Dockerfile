############################################################
# Dockerfile file to build Node.js container images and
# add Johnny-Five by NPM
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# Pull base image.
FROM guttertec/python
MAINTAINER Axel Quack <mail@axelquack.de>

# Install Node.js
RUN \
  add-apt-repository -y ppa:chris-lea/node.js \
  apt-get update \
  apt-get -y install nodejs

# Use changes to package.json to force Docker not to use the cache
# when there are changes to the application's node.js dependencies:
ADD package.json /tmp/package.json
RUN \
  cd /tmp && npm install
  mdkir -p /opt/app && cp -a /tmp/node_modules /opt/app

# Load the application's code in, therefore the previous docker
# "layer" that has been cached will be used if possible.
WORKDIR /opt/app
ADD . /opt/app

EXPOSE 3000

# Define default command. Make sure you have got zsh already installed.
CMD ["node", "server.js"]
