#!/bin/bash
for i in {1..2}
  do 
    for  j  in {1..2}
     do 
        for k in {1..2}
          do  
            touch  /tmp/$i$j$k.txt
          done 
     done
  done
