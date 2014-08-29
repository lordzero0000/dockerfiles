# VERSION: 0.1

# pull base image
FROM guttertec/ubuntu-openjdk-7
MAINTAINER Axel Quack <mail@axelquack.de>

RUN \
  apt-get update && \
  apt-get install -y wget libmozjs-24-bin && \
  update-alternatives --install /usr/bin/js js /usr/bin/js24 100

RUN wget -O /usr/bin/jsawk https://github.com/micha/jsawk/raw/master/jsawk
RUN chmod +x /usr/bin/jsawk

EXPOSE 25565

ADD start.sh /start

VOLUME [&#39;/data&#39;]
ADD server.properties /tmp/server.properties
WORKDIR /data

CMD /start

ENV MOTD A Minecraft Server Powered by Docker
ENV LEVEL world
ENV JVM_OPTS -Xmx512M -Xms512M
ENV VERSION 1.7.9