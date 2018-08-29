#!/bin/bash
user=user.txt
leng=`cat $user | wc -l`
trap 'echo "暂停 10s"; echo haha;exit'  2 
while  :
do
clear
if [ "$1" ==  "q" ];then
exit 
else
let x=$[RANDOM%leng]+1
let y=$[RANDOM%leng]+1
sed -n "${x}p" user.txt
sed -n "${y}p" user.txt
sleep 0.2
fi
done
