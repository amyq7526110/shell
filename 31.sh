#!/bin/bash
awk  -F: '/bash$/{x++}END{print x}'   /etc/passwd
egrep  bash$  /etc/passwd  | wc -l
