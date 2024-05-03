FROM php:7.4-apache
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev mariadb-client \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd mysqli
COPY . /var/www/html/
RUN chown -R www-data:www-data /var/www/html
EXPOSE 80
