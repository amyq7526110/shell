#!/bin/bash
while :
do 
echo "发送数据包："
ifconfig eth0  | awk '/RX pa/{print $5}'
echo  "接收数据包："
ifconfig eth0  | awk '/TX pa/{print $5}'
sleep 2
done

