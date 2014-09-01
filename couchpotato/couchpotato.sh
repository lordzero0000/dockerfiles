#!/bin/bash

############################################################
# Shell script to start CouchPotato
# AUTHOR: Axel Quack <mail@axelquack.de>
# Version 0.1
############################################################

exec /sbin/setuser nobody python /opt/couchpotato/CouchPotato.py --config_file=/config/config.ini --data_dir=/config/data