#!/bin/bash
#for i in `seq 254`
#do 
#[  $i -eq 100      ] && continue 
#echo "正在关闭192.168.4.$i"
#ssh 192.168.4.$i  poweroff
#done
myoff(){
echo "正在关闭$1"
ssh $1  poweroff
}


for i in `seq 254`
do 
[    $i  -eq  100      ] && continue
myoff 192.168.4.$i  &
done
