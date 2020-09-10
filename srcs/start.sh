#!/bin/bash

# config nginx
#mv ./nginx.conf /etc/nginx/
mkdir /var/www/your_domain
chown -R $USER:$USER /var/www/your_domain
mv ./your_domain /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/your_domain /etc/nginx/sites-enabled/
rm /etc/nginx/sites-enabled/default

# ssl
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=SI/ST=Ljubljana/L=Ljubljana/O=Security/OU=IT Department/CN=www.example.com"

# start
service nginx start
service php7.3-fpm start 

# mysql
service mysql start
mysql CREATE USER 'root'@'localhost';
mysql CREATE DATABASE wordpress;
mysql GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost';
mysql UPDATE mysql.user SET plugin = 'mysql_native_password' WHERE user='root';
mysql FLUSH PRIVILEGES;

# phpMyAdmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar xzf phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv phpMyAdmin-4.9.0.1-all-languages /var/www/your_domain/phpMyAdmin
rm phpMyAdmin-4.9.0.1-all-languages.tar.gz

# wordpress
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
mv wordpress /var/www/your_domain
rm latest.tar.gz
mv wp-config.php /var/www/your_domain

# restart
service php7.3-fpm restart 
service nginx restart
service mysql restart

bash