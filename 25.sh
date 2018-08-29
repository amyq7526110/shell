#!/bin/bash
netstat -atn | awk '{print $5}' | sed -n  '3,$p' | awk -F: '{print $1}'   |  grep -v ^$     |sort -nr  | uniq -c

