#!/bin/bash
if [ $# -eq 0   ];then
echo "请输入参数"
exit 1
else
nmcli connection modify eth0 ipv4.method manual ipv4.addresses 192.168.4.$1/24 connection.autoconnect yes
nmcli connection up eth0
echo pc$1.tedu.cn > /etc/hostname
hostname pc$1.tedu.cn
echo 1 | passwd --stdin root  
echo 'Hello World'                                          
yum-config-manager --add ftp://192.168.4.254/rhel7  &> /dev/null  #配置yum
echo 'yum 安装中'
sleep 5 
echo gpgcheck=0  >>  /etc/yum.repos.d/192.168.4.254_rhel7.repo
yum -y install vsftpd   &> /dev/null 
echo '配置vsftpd'
sleep 20
systemctl restart vsftpd   &> /dev/null 
systemctl enable  vsftpd   &>/dev/null
fi
