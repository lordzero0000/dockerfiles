############################################################
# Dockerfile file to build WAR file fetcher container images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# Pull base image.
FROM guttertec/ubuntu
MAINTAINER Axel Quack <mail@axelquack.de>

ENV REFRESHED_AT 2014-09-17

# Update packages and install wget if it is not already installed
RUN \
  apt-get -yqq update && \
  apt-get -yqq install wget

VOLUME [ "/var/lib/tomcat7/webapps" ]
WORKDIR /var/lib/tomcat7/webapps/

# Wget a WAR file from an URL when you run the container
ENTRYPOINT [ "wget" ]
CMD [ "-?" ]