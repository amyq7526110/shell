#!/bin/bash
echo '# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat'
echo   "默认是*"
read  -p "请输入分钟信息;"  min
read  -p "请输入小时信息;"  hour
read  -p "请输入日期信息;"  day
read  -p "请输入月份信息;"  month
read  -p "请输入星期信息;"  week
read  -p "请输入执行命令或脚本信息;"  jiaoben
min=${min:-'*'}
hour=${hour:-'*'}
day=${day:-'*'}
month=${month:-'*'}
week=${week:-'*'}
if [  "$jiaoben"  == ""     ];then
echo "please input jiaoben !"
else
echo   "#$min  $hour  $day  $month  $week  $jiaoben      "  >>   /etc/crontab
fi
