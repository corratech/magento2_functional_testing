
FROM unailopezalfa9/magento2_unit_testing:latest
MAINTAINER Unai Lopez <unai.lopez@alfa9.com>

# install OS packages
RUN apt-get update && apt-get install -y \
    wget \
    acl \
    apache2 \
    libapache2-mod-php \
    && apt-get clean

RUN a2enmod rewrite
RUN service apache2 restart \

# Install phantom JS
RUN apt-get update && apt-get install -y \
    build-essential g++ flex bison gperf ruby perl \
    libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
    libpng-dev libjpeg-dev python libx11-dev libxext-dev
RUN cd ~
RUN wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
RUN tar xvjf phantomjs-2.1.1-linux-x86_64.tar.bz2 
RUN mv phantomjs-2.1.1-linux-x86_64 /usr/local/share
RUN ln -sf /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin


