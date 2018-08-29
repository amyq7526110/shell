#!/bin/bash
log_file=/var/log/mariadb/mariadb_count.log
user=root
password=123456
while :
do
 sleep 2
 count=`mysqladmin -u root  status  | awk '{print $4}'`
 echo "`date +%Y%m%d`  并发连接数为：$count  "  >> $log_file
done

