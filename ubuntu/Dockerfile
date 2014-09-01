############################################################
# Dockerfile file to build Ubuntu container images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# pull base image
FROM ubuntu:14.04
MAINTAINER Axel Quack <mail@axelquack.de>

# perform an unattended installation, mostly silent
ENV DEBIAN_FRONTEND noninteractive

# Optimization
## fasten DPKG by disabling dpkg from calling sync() and the like between every package
## add an No-Cache header to APT http requests
## prevent launch of servers during apt-get install, 101 - action forbidden by policy
## Disable ssh (use nsenter instead out of security reasons)

RUN \
  echo "force-unsafe-io" > /etc/dpkg/dpkg.cfg.d/02apt-speedup && \
  echo "Acquire::http {No-Cache=True;};" > /etc/apt/apt.conf.d/no-cache && \
  echo $'#!/bin/sh\nexit 101' > /usr/sbin/policy-rc.d && \
  chmod +x /usr/sbin/policy-rc.d && \
  rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh

# Install packages
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential curl git python g++ make && \
  apt-get install -y software-properties-common && \
  apt-get install -y python-software-properties && \
  apt-get install -y curl git htop man tmux unzip vim wget make zsh && \
  rm -rf /var/lib/apt/lists/*

# Install oh-my-zsh and define zsh as default shell
# change default shell on login
RUN \
  wget --no-check-certificate http://install.ohmyz.sh -O - | /bin/zsh && \
  chsh -s /bin/zsh

# Clean up APT when done
RUN \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*