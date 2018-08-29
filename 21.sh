#!/bin/bash
rm -rf ~/.ssh/known_hosts
expect <<EOR
spawn ssh 192.168.4.$1
expect "yes/no"            {send "yes\r"}
expect "word"         {send "123456\r"}
expect "#"                 {send "yum -y install httpd\r"}
expect "#"                 {send "exit\r"}
EOR
