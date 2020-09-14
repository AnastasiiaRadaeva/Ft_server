FROM debian:buster

RUN apt-get update && apt-get -y upgrade

WORKDIR /var/www/server

# mariaDB is used in Debian instead mysql (the same) | php-fpm is "PHP fastCGI process manager”, it tell Nginx to pass PHP requests to this software for processing | php-mysql is a PHP module that allows PHP to communicate with MySQL-based databases
RUN apt-get -y install nginx \
mariadb-server \
php7.3 php-cli php-fpm php-mbstring php-mysql php-curl \
php-fpm php-mysql \
wget curl \
openssl \
vim

COPY ./srcs/start.sh ./
COPY ./srcs/your_domain ./
COPY ./srcs/wp-config.php ./

RUN chown -R www-data:www-data /var/www/*
RUN chmod -R 777 /var/*

EXPOSE 80 443
CMD bash start.sh
