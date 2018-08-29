#!/bin/bash
[  ! -d  /home/ftp  ] && mkdir /home/ftp
echo 'uid = nobody
gid = nobody
use chroot = yes 
max connections = 4
pid file = /var/run/rsync.pid
exclude = lost+found/
transfer logging = yes
timeout = 900 
ignore nonreadable = yes
dont compress = *.gz *.tgz *.zip *.z *.Z *.rpm *.deb *.bz2
[ftp]
     path = /home/ftp
     comment = share' > /etc/rsync.conf
 
