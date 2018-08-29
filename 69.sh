#!/bin/bash
if  [ ! ‐f /usr/bin/tab.py ];then 
  cat >> /usr/bin/tab.py <<EOF 
import readline 
import rlcompleter 
readline.parse_and_bind('tab: complete') 
EOF 
fi 
#sed  ‐i '$a export PYTHONSTARTUP=/usr/bin/tab.py' /etc/profile 
sed  -i '$a export PYTHONSTARTUP=/usr/bin/tab.py'  /etc/profile
source /etc/profile 
