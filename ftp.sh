#!/bin/bash
x=`yum repolist | awk '/repolist/{print $2}'  | sed   's/,//'  `
if [   $x -le 0      ];then 
echo "你没有yum源"
exit
fi
yum  -y install vsftpd
sed -i  's/^#anon/anon/'  /etc/vsftpd/vsftpd.conf
systemctl restart   vsftpd
systemctl enable  vsftpd 
chmod 1777 /var/ftp/pub
