#!/bin/bash

while :

do
x=`df | awk '{print $5}'  | grep [0-9] | sed 's/%//' | awk '{if(i<$1){i=$1}}END{print i}'`
if [ $x -ge 20 ];then
sleep 5
wall "ying pan shi yong chao guo 20%"' will be full'
fi
unset x
done
