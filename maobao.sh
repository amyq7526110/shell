#!/bin/bash
echo  "请输入你要比较的数字"
read -a arrs
for((i=0;i<${#arrs[@]};i++)){
      for((j=0;j< $i;j++)){
      if [[ ${arrs[i]} -gt  ${arrs[j]} ]];then
                    tmp=${arrs[i]}
                    arrs[i]=${arrs[j]}
                    arrs[j]=$tmp
               fi
                   
}          
}
echo "after sort"
echo ${arrs[@]}
