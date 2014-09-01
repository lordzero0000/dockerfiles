############################################################
# Dockerfile file to build OpenJDK Java 7 JRE container images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# Pull base image.
FROM guttertec/java:openjdk-7-jdk
MAINTAINER Axel Quack <mail@axelquack.de>

RUN \
  apt-get update && \
  apt-get install -y wget libmozjs-24-bin && \
  update-alternatives --install /usr/bin/js js /usr/bin/js24 100

# Make sure wget is installed
RUN \
  wget -O /usr/bin/jsawk https://github.com/micha/jsawk/raw/master/jsawk && \
  chmod +x /usr/bin/jsawk

EXPOSE 25565

ADD start.sh /start

VOLUME [&#39;/data&#39;]
ADD server.properties /tmp/server.properties
WORKDIR /data

CMD /start

ENV \
  MOTD A Minecraft Server Powered by Docker && \
  LEVEL world && \
  JVM_OPTS -Xmx512M -Xms512M && \
  ENV VERSION 1.7.9