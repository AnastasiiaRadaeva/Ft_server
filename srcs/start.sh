#!/bin/bash

# config nginx
mv /var/www/server/your_domain /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/your_domain /etc/nginx/sites-enabled/
rm /etc/nginx/sites-enabled/default

# ssl
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=RU/ST=Moscow/L=Moscow/O=School21/CN=kbatwoma"

# phpMyAdmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar xzf phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv phpMyAdmin-4.9.0.1-all-languages /var/www/server/phpMyAdmin
rm phpMyAdmin-4.9.0.1-all-languages.tar.gz

# wordpress
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm latest.tar.gz

# start
service nginx start
service php7.3-fpm start 
service mysql start

# mysql
mysql -e "CREATE USER 'kbatwoma'@'localhost' IDENTIFIED BY 'root';"
mysql -e "CREATE DATABASE ft_server_database DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;;"
mysql -e "GRANT ALL ON ft_server_database.* TO 'kbatwoma'@'localhost' WITH GRANT OPTION;"
mysql -e "FLUSH PRIVILEGES;"
mysql ft_server_database -u root < ft_server_database.sql

bash
