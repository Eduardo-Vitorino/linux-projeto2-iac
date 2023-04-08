#!/bin/bash

echo "Atualizando o sistema!"

apt-get update
apt-get upgrade -y

echo "Sistema atualizado!"

echo "------------------------------------"

echo "Instalando softwares necessarios!"

apt-get install apache2 -y
apt-get install unzip -y

echo "------------------------------------"

echo "Baixando o website!"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/