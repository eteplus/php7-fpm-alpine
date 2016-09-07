FROM php:7.0.10-fpm-alpine

MAINTAINER eteplus <eteplus@163.com>

RUN docker-php-source extract && \
  apk add --update --no-cache autoconf g++ make && \
  pecl install redis && \
  docker-php-ext-enable redis && \
  docker-php-source delete

RUN docker-php-ext-install mysqli

RUN docker-php-ext-install pdo

RUN docker-php-ext-install pdo_mysql

RUN docker-php-ext-install mbstring

RUN docker-php-ext-install tokenizer