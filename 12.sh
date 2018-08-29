#!/bin/bash
for i in {1..254}
do 
ping -c 2 -i0.3 -W1 192.168.4.$i  >/dev/null
if [  $? -eq 0  ];then
echo "Host 192.168.4.$i  up"
fi
done
