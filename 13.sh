#!/bin/bash
i=1
while [ $i -le 254    ]
do 
ping -c2 -i0.2 -W1 192.168.4.$i  &>/dev/null
if [   $?  -eq  0       ];then 
echo "Host  192.168.4.$i up "
else 
echo "Host 192.168.4.$i down"
fi
let i++
done
