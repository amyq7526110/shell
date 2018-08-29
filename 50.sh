#!/bin/bash
dir="/var/www/html"
find $dir -type f -size 0 -exec rm -rf {} \;
