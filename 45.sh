#!/bin/bash
while :
do
if [  $#  -eq 0  ];then
echo "请输入一个软件包的名字"
else 
break
fi
done
for package in "$@"
do 
if  rpm -q $package  &> /dev/null  ;then
  echo  -e "${package}\033[32m 已经安装\033[0m"
else
 echo -e "${package}\033[34m 未安装\033[0m"
fi
done

