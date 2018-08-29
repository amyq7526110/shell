#!/bin/bash
url=http://192.168.4.100
check_http(){
status_code=`curl -m 5 -s  -o /dev/null  -w %{http_code} $url`
}
while :
do
check_http
date=`date +%Y%m%-%H:%M:%S`
echo "当前时间：$date
$url 服务器异常，状态码：$status_code
请尽快排查。" > /tmp/http$$.pid
if [   $status_code -ne 200   ];then
  mail -s Waring root < /tmp/http$$.pid
else
sleep 5
fi
done
