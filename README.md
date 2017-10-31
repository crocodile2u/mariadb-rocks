# mariadb-rocks
Mariadb 10.3 (experimental) docker with ROCKSDB engine

Based on official mariadb image (https://github.com/docker-library/mariadb/blob/754b3987acb85150eae0e0bc92e6dd2edce0cb3d/10.3/Dockerfile), with all the options supported, see this page for the manual: https://hub.docker.com/_/mariadb/.

The default rocksdb.cnf from the debian package mariadb-plugin-rocksdb is saved as /etc/mysql/mariadb.conf.d/rocksdb.cnf but files from that folder are not included in the configuration. In order to have the plugin running, run container with -v /path/to/conf.d:/etc/mysql/conf.d (see conf.d/rocksdb.cnf).

