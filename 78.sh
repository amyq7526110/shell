fei(){
if [ $1  -eq 0   ];then
sum=0
elif [  $1 -eq  1  ];then
sum=1
else
  sum=$[`fei $[$1-1]`  +  `fei $[$1-2]` ]
fi 
echo -n "$sum "
}
for i in {0..10}
do
fei  $i
done
list=(0 1)
for i in `seq 2 11`
do 
list[$i]=`expr ${list[-1]} +  ${list[-2]}`
done
echo ${list[@]}
