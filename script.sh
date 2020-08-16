##!/bin/sh

echo "Test Container is running..."

#apt update && apt -y install mc lynx
#cp /usr/share/nginx/html/index.html /home
#sed 's!Welcome to!Welcome to HOME !' /home/index.html
#sed 's!Welcome to!Welcome to USR !' /usr/share/nginx/html/index.html
#sed 's!/usr/share/nginx/html!/home!' /etc/nginx/conf.d/default.conf

rm /usr/share/nginx/html/index.html
ln -s /home/index.html /usr/share/nginx/html/
echo "rm, ln -s"
#service nginx reload
