FROM mariadb:10.3

RUN echo "deb http://deb.debian.org/debian experimental main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y mariadb-plugin-rocksdb
