#!/bin/bash
awk -F: '{i=1;while(i<=NF){if($i~/root/){x++};i++}}END{print "root出现的次数为："x}'  /etc/passwd
# awk  -F:  '{i=1;while (i<=NF){if($i~/root/){x++};i++}}END{print x}'  /etc/passwd
