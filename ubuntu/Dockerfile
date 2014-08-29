# VERSION: 0.1

# pull base image
FROM ubuntu:precise
MAINTAINER Axel Quack <mail@axelquack.de>

# perform an unattended installation, mostly silent
ENV DEBIAN_FRONTEND noninteractive

# Optimization
RUN \
  # fasten DPKG by disabling dpkg from calling sync() and the like between every package
  echo "force-unsafe-io" > /etc/dpkg/dpkg.cfg.d/02apt-speedup && \
  # add an No-Cache header to APT http requests
  echo "Acquire::http {No-Cache=True;};" > /etc/apt/apt.conf.d/no-cache && \
  # prevent launch of servers during apt-get install, 101 - action forbidden by policy
  echo $'#!/bin/sh\nexit 101' > /usr/sbin/policy-rc.d && \
  chmod +x /usr/sbin/policy-rc.d
  # Disable ssh (use nsenter instead out of security reasons)
  #RUN rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh

# Install packages
RUN \
  apt-get -qq update && \
  apt-get -qqy upgrade && \
  apt-get install -qqy curl git htop man tmux unzip vim wget make zsh
  # hub 
  # keys???

# Install zsh config
#RUN \
#  mkdir -p /root/.config/ /root/.cache/ && \
#   git clone https://github.com/seebi/zshrc.git /root/.config/zsh/ && \
#   cd /root/.config/zsh && \
#   make install && \
#   chsh -s /usr/bin/zsh root && \
#   ln -s /root/.config/zsh/zshrc /root/.zshrc && \
#   echo "RUN DONE"

# Install oh-my-zsh and define zsh as default shell
RUN \
  wget --no-check-certificate http://install.ohmyz.sh -O - | /bin/zsh && \
  # change default shell
  chsh -s /bin/zsh
#ADD /root/.oh-my-zsh/themes/ano-docker.zsh-theme root/.oh-my-zsh/themes/ano-docker.zsh-theme
#RUN sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ano-docker"/g' /root/.zshrc
#RUN echo DISABLE_AUTO_UPDATE=true >> ~/.zshrc

# Add files.
#ADD root/.bashrc /root/.bashrc
#ADD root/.gitconfig /root/.gitconfig
#ADD root/scripts /root/scripts

# Set environment variables.
#ENV HOME /root

# Define working directory.
#WORKDIR /root

# Define default command.
#CMD ["byobu"]

# Clean up APT when done
RUN \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*