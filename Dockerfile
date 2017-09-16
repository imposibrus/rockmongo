FROM php:5.6-apache

RUN apt-get update && apt-get install -y libssl-dev && rm -rf /var/lib/apt/lists/*

RUN pecl install mongo && \
    docker-php-ext-enable mongo

COPY mpm_prefork.conf /etc/apache2/mods-available/mpm_prefork.conf
COPY . /var/www/html
