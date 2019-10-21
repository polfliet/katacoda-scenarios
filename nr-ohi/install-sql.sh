#!/bin/bash
sudo echo "mysql-server mysql-server/root_password password root" | sudo debconf-set-selections
sudo echo "mysql-server mysql-server/root_password_again password root" | sudo debconf-set-selections

sudo apt-get -y install mysql-server

# Katacoda editor can only open files from the home directory, using symbolic link
ln -s /etc/newrelic-infra/integrations.d/mysql-config.yml mysql-config.yml
