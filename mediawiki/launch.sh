#!/bin/bash

if [ -n "$SERVER_NAME" ]; then
	sed -i "s@^#ServerName www.example.com\$@ServerName $SERVER_NAME@" /etc/apache2/sites-enabled/000-default.conf
	echo "ServerName $SERVER_NAME" >>/etc/apache2/apache2.conf
fi
source /etc/apache2/envvars
exec /usr/sbin/apache2 -k start -DFOREGROUND
