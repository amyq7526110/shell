#!/bin/bash
clear
for i in {1..100}
 do  
    echo -ne "\033[6;8H["
    echo -ne "\033[6;9H$i%" 
    echo -ne "\033[6;13h]"
  sleep 0.1
 done 
