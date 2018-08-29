#!/bin/bash
num=0
for i  in `seq 100`
 do 
    num=$[i+num]
 done
echo $num 
