#!/bin/bash
num=`yum repolist | awk '/repolist/{print $2}' | sed 's/,//'`
if [  $num  -le  0        ];then 
yum -y install httpd   
yum -y install mariadb mariadb-server
yum -y install php php-mysql
else 
echo "没有yum源...."
fi
