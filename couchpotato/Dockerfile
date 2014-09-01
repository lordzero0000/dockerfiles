############################################################
# Dockerfile file to build CouchPotato container images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# pull base image
FROM ubuntu:precise
MAINTAINER Axel Quack <mail@axelquack.de>

# perform an unattended installation, mostly silent
ENV DEBIAN_FRONTEND noninteractive

# Set correct environment variables
ENV HOME /root

# Use baseimage-docker's init system
CMD ["/sbin/my_init"]

# Fix a Debianism of the nobody's uid being 65534
RUN \
  usermod -u 99 nobody && \
  usermod -g 100 nobody

RUN \
  add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu/ trusty universe multiverse" && \
  add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates universe multiverse" && \
  apt-get update -q

# Install dependencies
RUN \
  apt-get install -qy python wget unrar

# Install CouchPotato v2.5.2
RUN \
  mkdir /opt/couchpotato && \
  wget -P /tmp/ https://github.com/RuudBurger/CouchPotatoServer/archive/build/2.5.2.tar.gz && \
  tar -C /opt/couchpotato -xvf /tmp/2.5.2.tar.gz --strip-components 1 && \
  chown nobody:users /opt/couchpotato

EXPOSE 5050

# CouchPotato configuration
VOLUME /config

# Downloads directory
VOLUME /downloads

# Movies directory
VOLUME /movies

# Add edge.sh to execute during container startup
RUN mkdir -p /etc/my_init.d
ADD edge.sh /etc/my_init.d/edge.sh
RUN chmod +x /etc/my_init.d/edge.sh

# Add CouchPotato to runit
RUN mkdir /etc/service/couchpotato
ADD couchpotato.sh /etc/service/couchpotato/run
RUN chmod +x /etc/service/couchpotato/run