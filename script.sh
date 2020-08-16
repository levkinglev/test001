#!/bin/bash

echo "Test Container is running..."

apt update && apt -y install mc lynx
cp /usr/share/nginx/html/index.html /home
sed 's!/usr/share/nginx/html!/home!' /etc/nginx/conf.d/default.conf
service nginx reload
