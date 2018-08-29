#!/bin/bash
read -p "please enter directory:" dir
[  !  -d  $dir    ]&& echo "该目录不存在" && exit
read -p "please enter  name  of key;"  key
openssl genrsa  -out ${dir}/${key}.key
