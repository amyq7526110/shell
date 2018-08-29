#!/bin/bash
user=root
password=123456
dbname=mysql
date=`date +%Y%m%d`
[  ! -d /mysqlbackup ]&& mkdir /mysqlbackup
mysqldump -u"$user" -p"password" "$dbname"  > /mysqlbackup/"$dbname"-"$date".sql
