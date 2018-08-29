#!/bin/bash
read -p "please Input  first number:" num1
read -p "please Input  secend number:" num2
read -p "please Input  tired number:"  num3
if [ $num1  -gt   $num2  ];then
n=$num1
num1=$num2
num2=$n
fi
if [ $num1  -gt   $num3  ];then
n=$num1
num1=$num3
num3=$n
fi
if [ $num2  -gt   $num3 ];then
n=$num2
num2=$num3
num3=$n
fi
echo "$num1,$num2,$num3"
