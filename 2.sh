#!/bin/bash
read -p "please input username:" username
useradd $username
stty -echo
read -p "please input password " password
stty echo 
echo ""
echo  "$password" | passwd --stdin  "$username"
