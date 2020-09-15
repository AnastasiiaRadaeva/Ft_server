#!/bin/bash
if [[ "$1" == "off" ]]; then
sed -i 's/autoindex on/autoindex off/g' /etc/nginx/sites-available/your_domain
echo "autoindex off"
service nginx restart
elif [[ "$1" == "on" ]]; then
sed -i 's/autoindex off/autoindex on/g' /etc/nginx/sites-available/your_domain
echo "autoindex on"
service nginx restart
else
echo "please type on | off"
fi