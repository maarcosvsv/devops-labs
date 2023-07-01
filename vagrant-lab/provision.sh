#!/usr/bin/env bash
echo "Installing Apache and setting it up... (provision.sh)"
# "> /dev/null 2>&1" -> Evita escrever na tela.
apt -y install apache2 > /dev/null 2>&1
cp -r /vagrant/html/* /var/www/html
systemctl start apache2