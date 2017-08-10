
FROM unailopezalfa9/magento2_unit_testing:latest
MAINTAINER Unai Lopez <unai.lopez@alfa9.com>

# install OS packages
RUN apt-get update && apt-get install -y \
    acl \
    apache2 \
    libapache2-mod-php \
    a2enmod rewrite \
    service apache2 restart \
    && apt-get clean
