#!/bin/bash
sudo echo "mysql-server mysql-server/root_password password root" | sudo debconf-set-selections
sudo echo "mysql-server mysql-server/root_password_again password root" | sudo debconf-set-selections

sudo apt-get -y install mysql-server
