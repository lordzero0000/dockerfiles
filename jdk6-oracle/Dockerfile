############################################################
# Dockerfile file to Oracle JDK6 container images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# pull base image
FROM guttertec/ubuntu
MAINTAINER Axel Quack <mail@axelquack.de>

# Install Java (Oracle JDK6)
RUN \
  echo oracle-java6-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java6-installer && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]