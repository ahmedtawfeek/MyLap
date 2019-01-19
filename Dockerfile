FROM ubuntu:latest

RUN apt-get update -y 

COPY myapp /var/www/html/

RUN sudo service apache2 restart
