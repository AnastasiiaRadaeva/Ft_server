FROM debian:buster

WORKDIR /

RUN apt-get update && apt-get -y upgrade

# mariaDB is used in Debian instead mysql (the same) | php-fpm is "PHP fastCGI process manager”, it tell Nginx to pass PHP requests to this software for processing | php-mysql is a PHP module that allows PHP to communicate with MySQL-based databases
RUN apt-get -y install nginx \
mariadb-server \
php-mbstring php-zip php-gd php-xml php-pear php-gettext php-cgi \
php-fpm php-mysql \
wget \
openssl \
vim

COPY ./srcs/start.sh ./
COPY ./srcs/nginx.conf ./
COPY ./srcs/your_domain ./
COPY ./srcs/wp-config.php ./

EXPOSE 80 443
CMD bash start.sh