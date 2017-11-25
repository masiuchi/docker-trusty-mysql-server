FROM ubuntu:trusty

RUN apt-get update &&\
 DEBIAN_FRONTEND=noninteractive\
 apt-get -y --no-install-recommends install mysql-server &&\
 apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

EXPOSE 3306
CMD "bash -c 'find /var/lib/mysql -type f | xargs touch && mysqld'"

