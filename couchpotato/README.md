# CouchPotato

CouchPotato, written in Python, searches NZB providers periodically for new movies. It will auto grab all the movie names, screenshots and anything else from TheTVDB.

Official website: [CouchPotato](https://couchpota.to/)

## Installation

By default this Docker installs the latest stable version of CouchPotato.

  docker run -d --net="host" --name="couchpotato" -v /path/to/couchpotato/data:/config -v /path/to/downloads:/downloads -v /path/to/movies:/movies -v /etc/localtime:/etc/localtime:ro -p 5050:5050 guttertec/couchpotato

If you would like to run the latest updates from the master branch as well as enable in-app updates run:

  docker run -d --net="host" --name="couchpotato" -v /path/to/couchpotato/data:/config -v /path/to/downloads:/downloads -v /path/to/movies:/movies -v /etc/localtime:/etc/localtime:ro -e EDGE=1 -p 5050:5050 guttertec/couchpotato