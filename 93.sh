#!/bin/bash
tm=`date +%H`
if [ $tm  -ge  00 -a  $tm  -lt 12 ];then
 echo "早上好"
 elif [   $tm -ge 12  -a $tm  -lt 18   ];then
  echo "下午好"
  else 
  echo "晚上好"
fi
echo "当前时间:`date +"%Y-%m-%d--%H:%M:%S"`"
