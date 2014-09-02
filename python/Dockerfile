############################################################
# Dockerfile file to build Python container images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# Pull base image.
FROM guttertec/ubuntu
MAINTAINER Axel Quack <mail@axelquack.de>

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define default command. Make sure you have got zsh already installed.
CMD ["zsh"]