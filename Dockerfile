FROM php:7

# Install composer:
RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer

ADD . /app/
WORKDIR /app
RUN composer install 

EXPOSE 5000

CMD ["vendor/bin/phpunit", ""]