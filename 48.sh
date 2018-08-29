#!/bin/bash
clear
echo -e "\033[32m     !!!!!!!!警告（Waring）!!!!!!!!\033[0m"
echo 
echo "++++++++++++++++++++++++++++++++++++++++++++++++"
echo "脚本将会将磁盘分区转换为PV，并删除分区上所有数据"
echo "This Script will destory all data on the Disk   "
echo "++++++++++++++++++++++++++++++++++++++++++++++++"
echo 
read  -p "请问是否继续y/n：" sure
[  $sure ==  n     ] && exit
read  -p "please Input disk  ,for example /dev/vdb1:" disk
[  -z $disk   ] && echo "don't input disk" && exit
read  -p "please Input vg_name :" vg_name
[ -z  $vg_name  ] && echo "don't input vg_name" && exit
read -p   "please Input lv_name:"   lv_name
[ -z $lv_name ] && echo "don't input lv_name" && exit
read -p   "please Input lv_size:" lv_size
[ -z  $lv_size   ] && echo "don't input lv_name" && exit
vgcreate  $vg_name     $disk
lvcreate   -L $lv_size   -n  $lv_name     $vg_name

