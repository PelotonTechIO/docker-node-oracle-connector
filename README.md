# docker-oracle-connector

This container has an Ubuntu instance installed.  The OracleDB package has been installed.  In order to hit a remote database start the server as follows:  docker run -it -p 8280:8280 -v ~/:/tmp/files --net=host --add-host moby:0.0.0.0 53a910b817c5 /bin/sh

