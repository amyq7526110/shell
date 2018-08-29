#!/bin/bash
ip a s  | awk 'BEGIN{print "本机的mac地址如下"}/^[0-9]/{print $2;getline;if($0~/link/){print $2}}'  | egrep -v '(00:){5,}' | grep -v lo
ip a s  | awk 'BEGIN{print "本机MAC地址如下："}/^[0-9]/{print $2;getline;if($0~/link/){print $2}}'  | egrep -v  '(00:){5,}' | grep -v lo

