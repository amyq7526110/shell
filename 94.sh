#!/bin/bash
i=0
while :
do 
 read -p "请输入账户名，输入over结束："  key
  

 if [ $key == "over" ];then  
  break 
 else  
 name[$i]=-$key
 let i++
 fi
done
echo  "总用户数 ： $i "
echo "${name[@]}"
