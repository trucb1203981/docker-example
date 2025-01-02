# Use the official PHP image as the base image including composer
FROM php:8.3-fpm-alpine as base

# Define environment variables
ENV TIMEZONE=Asia/Ho_Chi_Minh
ENV LANG=en_US.UTF-8
ENV WORKDIR=/var/www/html
# Define the composer environment variable to allow the composer to be run as root
ENV COMPOSER_ALLOW_SUPERUSER=1

# Install dependencies
RUN apk update && \
    apk add --no-cache \
        bash \
        curl \
        libpng-dev \
        libjpeg-turbo-dev \
        libwebp-dev \
        libwebp-dev \
        libzip-dev \
        libxml2-dev \
        zlib-dev \
        oniguruma-dev \
        icu-dev \
        freetype-dev \
        g++ \
        make \
        autoconf \
        openssl-dev \
        git \
        unzip \
        zip \
        wget \
        # supervisor \
        && docker-php-ext-configure gd --with-freetype --with-jpeg \
        && docker-php-ext-install pdo_mysql mbstring gd zip exif pcntl bcmath zip intl \
        && rm -rf /var/cache/apk/*

# MULTI-STAGE BUILD
# Build the application
FROM base as development

# Copy the composer binary from the composer image
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copy the development configuration
# COPY ./.docker/php/php.development.ini /usr/local/etc/php/php.ini

# Set default directory
WORKDIR $WORKDIR

# Copy the application files to the container
COPY . .

# Install the composer dependencies
RUN composer install

# Optimize the composer autoloader
RUN composer dump-autoload --optimize

# Grant permissions
RUN chown -R www-data:www-data $WORKDIR

# Expose the port
EXPOSE 9000

# Command default for development
# CMD ["php-fpm"]
