############################################################
# Dockerfile file to build Ghost container images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# pull base image
FROM ubuntu:precise
MAINTAINER Axel Quack <mail@axelquack.de>

ENV GHOST_VERSION 0.5.1
ENV APP_ROOT /data/app

RUN \
  curl -sLO http://ghost.org/archives/ghost-$GHOST_VERSION.zip && \
  mkdir -p $APP_ROOT && unzip -uo ghost-$GHOST_VERSION.zip -d $APP_ROOT && \
  rm ghost-$GHOST_VERSION.zip && \
  cd $APP_ROOT && npm install --production

ADD start.sh start.sh

VOLUME ["/data/app"]

EXPOSE 2368
RUN rm /usr/sbin/policy-rc.d
CMD ["/start.sh"]