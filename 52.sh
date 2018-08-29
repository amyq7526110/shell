#!/bin/bash
read -p "请输入一个年份：" year
if [   "$year"  = ""     ];then
echo "请输入年份"
exit
#sed 's/\.\|-\|+\|%\|\^//g'  |  去掉 . / + - %
elif echo "$year" | grep [^0-9] >/dev/null ;then
echo "$year 不是年份" 
#elif [[ $year =~ ^[a-z\|A-Z]+$ ]]; then
#echo "你输入的不是数字"
#exit
elif [ $[year%100] -ne 0     ];then
      if [  $[$year%4] -eq 0      ];then
               echo "你输入的是闰年 "
      else 
               echo "你输入的不是闰年" 
      fi
else 
      if [ $[$year%400] -eq 0   ];then
                echo "你输入的是闰年"
      else
                echo "你输入的不是闰年"
      fi
fi

