#!/bin/bash
ss -nutlp  | awk '{print $1":"$5}' | awk -F: '{print "协议："$1"  端口号："$NF}'| grep [0-9] | uniq  | sort -n
