#!/bin/bash

############################################################
# Shell script to get CouchPotato bleeding edge images
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

# Does the user want the latest version?
if [ -z "$EDGE" ]; then
  echo "Bleeding edge not requested"
else
  apt-get install -qy git
  rm -rf /opt/couchpotato
  git clone https://github.com/RuudBurger/CouchPotatoServer.git /opt/couchpotato
  chown -R nobody:users /opt/couchpotato
fi