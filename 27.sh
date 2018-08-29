#!/bin/bash
awk -F"[/:]" '$4":"$5>="09:30" && $4":"$5<="10:30"{print $1,$4,$5}'     /var/log/httpd/access_log   | wc -l

