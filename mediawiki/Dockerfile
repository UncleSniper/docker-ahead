FROM php:7.4-apache-bullseye

ADD mediawiki.tar.gz /var/www/html/

RUN set -ex \
	&& mv /var/www/html/mediawiki-*.*.*/* /var/www/html \
	&& rmdir /var/www/html/mediawiki-*.*.* \
	&& apt-get update \
	&& apt-get install -y libicu-dev zlib1g-dev libgd-dev imagemagick libpq-dev \
	&& docker-php-ext-install intl \
	&& docker-php-ext-install gd \
	&& pecl install apcu \
	&& docker-php-ext-enable apcu \
	&& pecl install pdo_pgsql \
	&& docker-php-ext-enable pdo_pgsql \
	&& rm -r /var/lib/apt/lists/*
