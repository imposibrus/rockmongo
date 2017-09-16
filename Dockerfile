FROM php:5.6-apache

COPY . /var/www/html

RUN apt-get update && apt-get install -y libssl-dev && rm -rf /var/lib/apt/lists/*

RUN pecl install mongo && \
    docker-php-ext-enable mongo
