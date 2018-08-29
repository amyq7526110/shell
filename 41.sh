#!/bin/bash
host=$1
user=root
passwd=123456
mysqladmin  -h $1 -u root -p123456   ping  &>/dev/null
if [       $?  -eq 0      ];then
echo "mysql is up"
else
echo "mysql is down"
fi
