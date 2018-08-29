#!/bin/bash
for i in  `cat   user.txt`
  do 
    useradd  $i
   echo "123456"  | passwd --stdin $i
  done
