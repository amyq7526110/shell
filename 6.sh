#!/bin/bash
n=$[RANDOM%100+1]
while :
do
read -p  "please Input 1-100 number:" x
if [  $x -eq  $n      ];then
echo ok
exit
elif [  $x -gt $n       ];then
echo dale
else 
echo xiaole
fi
done

