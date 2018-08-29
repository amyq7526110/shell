#!/bin/bash
read -p "please input [y/n]" sure
case $sure in
y|Y|YES|yes)
echo "you enter yes";;
n|N|no|NO)
echo "you enter no";;
*)
echo "errot";;
esac
