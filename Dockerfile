FROM debian:buster

WORKDIR /

RUN apt-get -y update && apt-get -y upgrade
#tree vim не устанавливаю, потому что пока не понимаю, зачем он

RUN apt-get -y install nginx

RUN apt-get -y install mariadb-server
#я не очень понимаю, зачем mariadb  