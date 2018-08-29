#!/bin/bash
read  -p "请输入文件名或目录"  haha
if [ "$haha" ==  ""      ];then
echo "请输入参数"
echo "用法$0 [文件名|目录名]"
fi
if [ -f  $haha   ];then
echo "文件存在" 
ls -l  $haha
else
echo 
 echo "没有该文件"
fi
if [  -d  $haha  ];then 
echo "目录存在"
ls -ld $haha
else 
echo "没有该目录"
fi

