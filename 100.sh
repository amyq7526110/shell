#!/bin/bash 
awk '{chars+=length($0)+1;words+=NF}END{print  NR,chars,words}'
