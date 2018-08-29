#!/bin/bash
read -p "please input a number:" num
for ((i=1;i<=$num;i++))
do
        for ((h=$((2*$num-2*$i));h>=0;h--))
        do
                 echo -e " \c"
        done
        for ((j=1;j<=$((2*$i-1));j++))
        do
               echo  -e  " *\c"
        done
        echo
done
    
#awk  'BEGIN{i="  ";j="* ";for (x=0;x<8;x++ ){ip[x]=ip[x-1]i};for(w=0;w<15;w++){io[w]=io[w-1]j};for(y=0;y<15;y+=2){print ip[(y+15)%((y+8)+y/2)]io[y]}}' 
