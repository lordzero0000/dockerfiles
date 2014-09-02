############################################################
# Dockerfile file to build Node.js container images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# Pull base image.
FROM guttertec/python
MAINTAINER Axel Quack <mail@axelquack.de>

# Install Node.js
RUN \
  cd /tmp && \
  wget http://nodejs.org/dist/node-latest.tar.gz && \
  tar xvzf node-latest.tar.gz && \
  rm -f node-latest.tar.gz && \
  cd node-v* && \
  ./configure && \
  CXX="g++ -Wno-unused-local-typedefs" make && \
  CXX="g++ -Wno-unused-local-typedefs" make install && \
  cd /tmp && \
  rm -rf /tmp/node-v* && \
  echo '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.zshrc

# Define working directory.
WORKDIR /data

# Define default command. Make sure you have got zsh already installed.
CMD ["zsh"]
