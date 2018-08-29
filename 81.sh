#!/bin/bash
for i in `awk -F: '$3>=1000{print $3}'  /etc/passwd `
do 
  userdel -r $i
done

