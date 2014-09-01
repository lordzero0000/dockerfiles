############################################################
# Dockerfile file to build OpenJDK Java 6 JRE container images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# Pull base image.
FROM guttertec/ubuntu
MAINTAINER Axel Quack <mail@axelquack.de>

# Install Java.
RUN \
  apt-get update && \
  apt-get install -y openjdk-6-jre && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define default command. Please make sure that zsh is already installed.
CMD ["zsh"]