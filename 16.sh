#!/bin/bash
rotate_line(){
INTEPVAL=0.1
COUNT="0"
while :
do 
COUNT=$[COUNT+1]
case $COUNT in
1)
echo -ne '-'"\b\c"
sleep $INTEPVAL
;;
2)
echo -ne '\\'"\b\c"
sleep $INTEPVAL
;;
3)
echo -ne "|\b\c"
sleep $INTEPVAL
;;
4)
echo -ne "/\b\c"
sleep $INTEPVAL
;;
*)
    break
esac
done
}

while :
do
rotate_line 
done
