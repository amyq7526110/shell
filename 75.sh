#!/bin/bash 
#Author:丁丁历险(Jacob) 
#等级分类如下: 
#  大于等于 90              神功绝世 
#  大于等于 80,小于 90      登峰造极 
#  大于等于 70,小于 80      炉火纯青 
#  大于等于 60,小于 70      略有小成 
#  小于 60                  初学乍练 
  
read  -p  "请输入积分(0‐100):" JF
if [  "$JF"  ==  ""    ];then
echo "请输入积分，谢谢"
sleep 3
exit
elif echo $JF | grep [^0-9] > /dev/null ;then
echo "请输入数字，谢谢"
sleep 3
exit 
elif [  $JF  -gt  100 -o  $JF -lt 0       ];then
echo "请输入1-100的数"
sleep 3
exit
fi
if [ $JF -ge 90 ] ; then 
    echo "$JF 分,神功绝世" 
elif [ $JF -ge 80 ] ; then 
    echo "$JF 分,登峰造极" 
elif [ $JF -ge 70 ] ; then 
    echo "$JF 分,炉火纯青" 
elif [ $JF -ge 60 ] ; then 
    echo "$JF 分,略有小成" 
else 
    echo  "$JF分，初学乍练"
fi
