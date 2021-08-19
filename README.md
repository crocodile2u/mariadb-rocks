# mariadb-rocks
MariaDB 10.X docker image with [ROCKSDB](https://rocksdb.org/) engine

[![](https://images.microbadger.com/badges/version/crocodile2u/mariadb-rocks.svg)](https://microbadger.com/images/crocodile2u/mariadb-rocks "Get your own version badge on microbadger.com")

Based on official mariadb image (https://github.com/MariaDB/mariadb-docker), with all the options supported, see this page for the manual: https://hub.docker.com/_/mariadb/.

The default rocksdb.cnf from the debian package mariadb-plugin-rocksdb is saved as /etc/mysql/mariadb.conf.d/rocksdb.cnf but files from that folder are not included in the configuration. In order to have the plugin running, run container with -v /path/to/conf.d:/etc/mysql/conf.d (see conf.d/rocksdb.cnf).

