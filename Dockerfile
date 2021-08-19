FROM mariadb:10.5

RUN echo "deb http://deb.debian.org/debian experimental main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138
#See: https://github.com/docker-library/mariadb/issues/265
RUN dpkg-divert --add /bin/systemctl && ln -sT /bin/true /bin/systemctl
RUN apt-get update && apt-get install -y mariadb-plugin-rocksdb
