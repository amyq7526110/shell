#!/bin/bash
if [  $USER == root     ];then
yum -y install vsftpd
else
  echo "你不是超级管理员，请你不要搞笑。"
fi
