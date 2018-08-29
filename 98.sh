#!/bin/bash
awk '{print $1"\n"$2"\n"$3"\n"$4"\n"$5"\n"$6}' a.txt  | sort  | uniq -c | sort
awk '{print $7}' a.txt | sort | uniq -c | sort
