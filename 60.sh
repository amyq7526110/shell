#!/bin/bash
url=http://192.168.4.33
echo -e  "\033[42:35m  开始下载\033[0m"
sleep 2
type=jpg
for i in  `seq 5`
do 
 echo "正在下载$i.$type"
curl $url/$i.$type  -o /opt/${i}.$type
 sleep 1
done

