#!/bin/bash
for i in {1..9}
do 
for j in `seq $i`
do 
  echo  -n $i
done
echo 
done
for i in {1..5}
do 
   for j in `seq $i`
    do
    if [ $j  -eq $i   ];then
   echo -n "|_ "
    else 
   echo -n "| "
  fi
   done
echo 
done
for i in {1..5}
do
for j in `seq $i`
do
  echo  -n  "* "
done
echo 
done
for i in {5..1}
do
for j in `seq $i`
do
  echo  -n "* "
done
echo 
done

