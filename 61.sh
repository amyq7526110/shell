#!/bin/bash
awk -F: '{print $1}' /etc/passwd 
cut -d: -f1 /etc/passwd
sed 's/:.*//' /etc/passwd
