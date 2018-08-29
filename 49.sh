#!/bin/bash
awk '/vendor_id/{print $3}' /proc/cpuinfo | uniq
num=$[RANDOM%100+1]
i=0
while :
do
read -p "please Input 1~100 number:" n
[ $n -gt 100   ] && echo "please input 1~100 number" && exit
[ $n -lt 1     ] && echo "please input 1~100 number" && exit
if [   $num  -eq $n      ];then
echo "你猜对了"
break
elif [    $num -gt  $n   ];then
echo "你猜小了"
else 
echo "你猜大了"
fi
let i++
done
echo "你猜了$i次"
