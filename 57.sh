#!/bin/bash
read -p "请输入你的用户名：" user
stty -echo 
read -p "请输入你的密码:" pass
stty echo
if [   "$user" == 'tom'  -a "$pass" == '123456'     ];then 
echo
echo "Login successful"
else
echo 
echo "Login Faild"
fi
