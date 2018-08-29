#!/bin/bash
for i  in `grep bash$  /etc/passwd  |  awk -F: '{print $1}' `
  do  
    echo  "$i  "
     awk -F: -v x=$i '$1==x{print "-->" $2}'  /etc/shadow
   done
#awk -F: '/bash$/{print $1}'  /etc/passwd
