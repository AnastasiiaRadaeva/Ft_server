FROM debian:buster

RUN apt-get update && apt-get -y upgrade

#mariaDB is used in Debian instead mysql (the same)
#php-fpm is "PHP fastCGI process manager”,
#it tell Nginx to pass PHP requests to this software for processing
#php-mysql is a PHP module that allows PHP to communicate with MySQL-based databases
RUN apt-get -y install \
###vim \ 
nginx \
mariadb-server \
php-fpm php-mysql

#
RUN apt-get -y install \
php-curl \
php-gd \
php-intl \
php-mbstring \
php-soap \
php-xml \
php-xmlrpc \
php-zip \
wget \
curl

