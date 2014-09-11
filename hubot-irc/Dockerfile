############################################################
# Dockerfile file to build Hubot IRC container images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# Pull base image.
FROM guttertec/hubot
MAINTAINER Axel Quack <mail@axelquack.de>

# Install hubot-irc
WORKDIR /root/mybot
RUN \
  npm install hubot-irc --save && \
  npm install

# Set Hubot irc environment
# HUBOT_IRC_SERVER and HUBOT_IRC_ROOMS must be indicated by `docker run -e ...`
ENV \
  HUBOT_IRC_NICK hubot && \
  HUBOT_IRC_UNFLOOD true

# HTTP Listener listen port 9980
ENV PORT 9980
EXPOSE 9980

# Run redis-server and Hubot("-a irc")
EXPOSE 6379
RUN /etc/init.d/redis-server start
ENTRYPOINT ["bin/hubot", "-a", "irc"]
CMD ["--name", "myhubot"]