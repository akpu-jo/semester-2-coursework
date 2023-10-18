#!/bin/bash

# Update and upgrade packages
sudo apt update
sudo apt upgrade -y
sudo apt -y install git

#Apache 
sudo apt -y install apache2

sudo service apache2 status
sudo service apache2 start

#PHP
sudo apt -y install php
sudo apt -y install libapache2-mod-php

# Restart Apache
sudo service apache2 restart

#Mysql
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

sudo apt -y install mysql-server
sudo mysqladmin -uroot -proot create coursework
sudo apt -y install php-mysql

# Restart Apache
sudo service apache2 restart
