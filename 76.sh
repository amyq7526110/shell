#!/bin/bash
read -p "请输入一个字符："  key
#[  $key  [a-z][A-Z] ]    && echo zimu  &&  exit
#[  $key  [0-9]      ]    && echo shuzi  && exit
#   echo "other  zifu"
case $key in 
[a-z]|[A-Z])
echo "zimu"  ;;
[0-9])
echo shuzi ;;
*)
echo other
esac
