#!/bin/bash
read -p "please Input your username:" user
stty -echo
read -p "please Input your password:" pass
stty echo
if [  -z  $user   ];then
echo "please Input username!"
exit 2
fi
useradd  $user
pass=${pass:-123456}
echo $pass | passwd --stdin $user

