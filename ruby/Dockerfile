############################################################
# Dockerfile file to build Redis container images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# Pull base image.
FROM guttertec/ubuntu
MAINTAINER Axel Quack <mail@axelquack.de>

# Install Ruby.
RUN \
  apt-get update && \
  apt-get install -y ruby ruby-dev ruby-bundler && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define default command. Make sure zsh is already installed.
CMD ["zsh"]