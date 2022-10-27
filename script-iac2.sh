#!/bin/bash

echo "Atualizando o servidor"
# Update repositories and upgrade packages
apt-get update
apt-get upgrade -y
# Installing APACHE2
apt-get install apache2 -y
# Installing Unzip
apt-get unzip -y

echo "Baixando arquivos da aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
