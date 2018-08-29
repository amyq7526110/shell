#!/bin/bash
for i in `seq 3`
do 
read -p "please input your username :"  user
read -p "please input your password :"  pass
if [   $user == 'tom'  -a $pass ==  '123456'   ];then
echo "Login successful"
exit
fi
done
echo "Login Faild"
