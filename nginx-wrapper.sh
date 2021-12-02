#!/bin/bash
apt update
apt upgrade
apt install -y nginx
echo 'Hello world from Crash course DevOps' > /var/www/html/index.html