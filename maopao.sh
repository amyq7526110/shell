#!/bin/bash
echo "请输入你要比较的数字"
read -a arrs
for ((i=0;i<${#arrs[@]};i++))
do   echo "i ${arrs[i]}"
    for ((j=i+1;j<${#arrs[@]};j++))
         do
              if [[  ${arrs[i]} -gt  ${arrs[j]}   ]];then
                 tmp=${arrs[i]}
                 arrs[i]=${arrs[j]}
                 arrs[j]=$tmp

             fi
            echo "j ${arrs[j]}"
         done
done
echo ${arrs[@]}
