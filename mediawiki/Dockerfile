FROM ubuntu:20.04

ADD mediawiki.tar.gz /var/www/html/

RUN set -ex \
	&& apt-get update \
	&& DEBIAN_FRONTEND=noninteractive apt-get upgrade -y --with-new-pkgs \
	&& DEBIAN_FRONTEND=noninteractive apt-get install -y \
		apache2 php7.4 libapache2-mod-php7.4 php7.4-gd imagemagick php7.4-pgsql php7.4-opcache php7.4-intl \
		php7.4-mbstring php7.4-xml php7.4-apcu git \
	&& rm -r /var/lib/apt/lists/* \
	&& echo php_admin_flag display_errors off >>/etc/apache2/mods-available/php7.4.conf \
	&& rm /var/www/html/index.html \
	&& mv /var/www/html/mediawiki-*.*.*/* /var/www/html \
	&& rmdir /var/www/html/mediawiki-*.*.* \
	&& find /etc/apache2 -type f -iname '*.conf' | xargs sed -i 's/AllowOverride None/AllowOverride All/g' \
	&& ln -s /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled

ADD launch.sh /launch.sh

ENTRYPOINT ["/bin/bash", "/launch.sh"]
CMD []
