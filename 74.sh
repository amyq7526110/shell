#!/bin/bash
running=0
sleeping=0
stoped=0
zombie=0
for  pid in /proc/[1-9]*
do 
 procs=$[procs+1]
 stat=`awk '{print $3}' $pid/stat`
 case $stat in
R)
running=$[running+1];;
S)
sleeping=$[sleeping+1] ;;
T)
stoped=$[stoped+1]  ;;
Z)
zombie=$[zombie+1] ;;
esac
done
echo "进程统计信息如下"
echo "总进程数：$procs"
echo "Running的进程数 ：$running"
echo "Stoped的进程数  ：$stoped"
echo "Sleeping的进程数：$sleeping"
echo "Zambie的进程数  ：$zambie"








