############################################################
# Dockerfile file to build Hubot Scripts container images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# Pull base image.
FROM guttertec/hubot
MAINTAINER Axel Quack <mail@axelquack.de>

# Add scripts
ADD \
  scripts/examples.coffee /root/mybot/scripts/advice.coffee && \
  scripts/examples_cron.coffee /root/mybot/scripts/examples_cron.coffee && \
  scripts/examples_rss.coffee /root/mybot/scripts/examples_rss.coffee && \
  scripts/examples_http_listener.coffee /root/mybot/scripts/examples_http_listener.coffee

# Install npm libraries
WORKDIR /root/mybot
RUN npm install cron parse-rss cheerio