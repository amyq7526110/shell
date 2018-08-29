#!/bin/bash
service="nfs http ssh"
port="80 22 8080"
for i in  $service
do
echo "Adding $i service to firewall"
firewall-cmd  --permanent  --add-service=${i}
done
for i in $port
do
echo "Adding $i port to firewall"
firewall-cmd  --permanent  --add-port=${i}/tcp
done
firewall-cmd --reload

