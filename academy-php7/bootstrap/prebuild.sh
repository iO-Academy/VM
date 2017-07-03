#!/usr/bin/env bash

echo "Installing all the things"
sudo yum install -y epel-release nano

# httpd
echo "Installing httpd"
sudo yum install -y httpd
sudo chkconfig httpd on
sudo service httpd start

# PHP 7.1
echo "Installing php 7.1"
sudo rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
sudo yum install -y php71 --enablerepo=remi-php71

# MySQL 5.6
echo "Installing mysql 5.6"
sudo rpm -Uvh http://repo.mysql.com/mysql-community-release-el6-5.noarch.rpm
sudo yum install -y mysql --enablerepo=mysql56-community

