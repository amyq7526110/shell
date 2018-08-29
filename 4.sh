#!/bin/bash
yum -y install httpd
yum -y install mariadb mariadb-server
yum -y install php php-mysql

systemctl restart httpd mariadb
systemctl enable httpd mariadb
