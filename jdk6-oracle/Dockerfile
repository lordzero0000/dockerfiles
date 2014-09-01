############################################################
# Dockerfile file to Oracle JDK6 container images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# pull base image
FROM guttertec/ubuntu
MAINTAINER Axel Quack <mail@axelquack.de>

RUN \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get -qq update && \
  echo oracle-java6-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
  apt-get -qqy install oracle-java6-installer && \
  update-alternatives --display java