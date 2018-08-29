#!/bin/bash 
for i  in {1..8}
do 
    for  j in {1..8}
      do
        if [ $[$j%2] -eq  $[$i%2]      ];then
         echo -ne "\033[46;30m  \033[0m"
       else  
         echo -ne "\033[47;34m  \033[0m"
       fi  
     done
    echo
done
echo -e "\033[36m 天蓝字 \033[0m"
echo -e "\033[37m 白色字 \033[0m"
echo -e "\033[46;30m 天蓝底黑字 \033[0m"
echo -e "\033[47;34m 白底蓝字 \033[0m"

