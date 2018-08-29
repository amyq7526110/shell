#!/bin/bash
cat /var/log/httpd/access_log | awk -F"[/:]" '$4":"$5>="09:30" && $4":"$5<="10:30"{print $1}' |  awk -F- '{print $1}'  | uniq -c 
      

