#!/bin/bash
je(){
if [ $1 -eq 1   ];then
n=1
echo $n
else
n=$[$1*`je $[$1-1]`]
echo $n
fi

}
echo `je $1`
