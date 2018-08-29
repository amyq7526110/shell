#!/bin/bash
key=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
num=${#key}
echo $num
pass=""
for i  in  {1..8}
do 
leng=$[RANDOM%$num]
pass=$pass${key:$leng:1}
done
echo "$pass"
