#!/bin/bash
x=`sed    -n '/bash$/s/:.*//p'   /etc/passwd `
for i in $x
  do 

     b=`sed  -n  "/${i}/p"  /etc/shadow` 
     d=${b#*:}  
     c=${d%%:*}
     f=`echo $c  |  sed 's/!//g'`
   echo "$i---$f"
  done  
