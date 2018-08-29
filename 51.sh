#!/bin/bash
ps aux | awk '{if($8 == "S"){print $2,$11}}'
