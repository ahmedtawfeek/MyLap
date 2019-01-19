FROM ubunto:latest

RUN apt-get update && \
    apt-get install apache2 && apt-get install php5 libapache2-mod-php5 && apt-get install mysql-server mysql-client

COPY myapp /var/www/html/

RUN service apache2 restart
