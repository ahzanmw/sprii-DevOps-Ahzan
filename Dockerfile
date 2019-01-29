FROM php:7.2-apache

RUN apt-get update && apt-get install -y \
git \
zip \
zlib1g-dev

#cloning Lumen from github
RUN git clone https://github.com/laravel/lumen.git /app/

WORKDIR /app

#Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN composer install

CMD php -S 0.0.0.0:80 -t public
