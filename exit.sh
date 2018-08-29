#!/bin/bash
if [  $# -ne 2   ];then 
echo  "please input num1 num2"
exit 10
fi
expr $1 + $2
