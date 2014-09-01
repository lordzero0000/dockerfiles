############################################################
# Dockerfile file to build Ubuntu container images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# Pull base image.
FROM ubuntu:14.04
MAINTAINER Axel Quack <mail@axelquack.de>

# Install.packages
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget zsh && \
  rm -rf /var/lib/apt/lists/*

# Install oh-my-zsh and define zsh as default shell
# change default shell
RUN \
  wget --no-check-certificate http://install.ohmyz.sh -O - | /bin/zsh && \
  chsh -s /bin/zsh

# Add files.
ADD root/.bashrc /root/.bashrc
ADD root/.gitconfig /root/.gitconfig
ADD root/.scripts /root/.scripts

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["zsh"]
