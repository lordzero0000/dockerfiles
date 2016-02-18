############################################################
# Dockerfile file to build Hubot Slack container images
# AUTHOR: Irving Gómez <lordzero0000@gmail.com>
# Version 0.0.1
############################################################

# Pull base image.
FROM guttertec/hubot-scripts

# Install hubot-slack
WORKDIR /root/mybot
RUN \
  npm install hubot-slack --save && \
  npm install

# HTTP Listener listen port 9980
ENV PORT 9980
EXPOSE 9980

# Run Hubot("-a adapter --name hubot_name")
RUN bin/hubot -a slack --name $HUBOT_NAME
