FROM ubuntu:latest

RUN apt-get update -y && \
    apt-get install -y apache2 && apt-get install -y php5 libapache2-mod-php5 && apt-get install -y mysql-server mysql-client

COPY myapp /var/www/html/

RUN sudo service apache2 restart
