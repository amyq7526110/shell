#!/bin/bash
menu(){
echo -e "\033[0m"
echo -ne "\033[40;32m "
clear 
echo -e "\033[41;32m ############################################ \033[0m"
echo -e "\033[41;32m #        1:search a record                 # \033[0m"
echo -e "\033[41;32m #        2:add a record                    # \033[0m"
echo -e "\033[41;32m #        3:delete a record                 # \033[0m"
echo -e "\033[41;32m #        4:display all recrod              # \033[0m"
echo -e "\033[41;32m #        5:edit record with vi             # \033[0m"
echo -e "\033[41;32m #        H:help screen                     # \033[0m"
echo -e "\033[41;32m #        Q:exit pragma                     # \033[0m"
echo -e "\033[41;32m ############################################ \033[0m"
echo -ne "\033[40;32m "
read -p "please your choice [1,2,3,4,5,H,Q]:"  choice
}
search(){
while :
do
  clear
  echo -ne "\033[40;37m"
  read -p  "please enter  your name >>>"  name
if [ ! -f  record     ];then
     if [ "$name"  == ""  ];then
     echo "you  didn't  enter  a  name"
     sleep 3
     exit
     else
     echo  "you  must  have  some  scores  before  you  can  search!"
     sleep 3
     exit 
     fi
fi
if [ "$name" == ""  ]; then
   echo "you  didn't  enter  a  name"
   sleep 3
   continue
else
  j=0
  for i in `cat record`
     do 
     leng=`cat record  | wc -l`
     let j++
     n=`echo  $i | awk -F. '{print $2}'`
     if [  "$n" == "$name"   ];then
         echo "$i"
         sleep 3  
         void            
        break 
     elif [ $j -eq $leng     ];then
     echo "name  not  in record"
     sleep 3
     void
     fi
   done
  echo -ne  "\033[40;37m\033[0m"
  sleep  3
  
fi
done
}
add(){
add_leng=$[`cat record  |  wc -l` + 1 ]  
while :
  do
    echo -ne "\033[40;37m"
    clear
    read -p "enter name  and score  of  a  recoed ："  add_name add_score
    if [ "$add_name"  ==  ""  -o   "$add_score" ==  ""    ];then
      echo "you  didn't  enter  any  value"
      echo "please  enter  name  and  score"
      sleep 3
      continue   
    fi
   if   echo "$add_score" | sed 's/\.\|-\|+\|%\|\^//g' | grep [^0-9] >/dev/null ;then
   echo "$add_score 不是数字" 
     sleep 3
    void
   elif [[ $add_name =~ ^[a-z\|A-Z]+$ ]]; then
     echo  "$add_leng"."$add_name"."$add_score"  >> record
     echo  "added   "$add_leng"."$add_name"."$add_score"   in record"
    sleep 3
     void 
   else 
     echo "$add_name 不是字母"
     sleep 3
     void
   fi
   done
}
delete(){  
while  :
clear 
do
cat record
read -p "你要删除第几条记录(按q退出)："  num
   x=`cat record | wc -l`
   if [  "$num"  ==  ""    ];then
   echo "please enter a record number ："
   sleep  3
   continue
   elif [ "$num"  == "q"      ];then 
   void 
    
   fi
   if   echo "$num" |  grep [^0-9] >/dev/null ;then
   echo "Please input the correct record number:"      
   sleep 3
   continue
   elif [  $num  -gt  $x      ];then
   echo "Please input the correct record number:"      
   sleep 3
   continue
   else 
    sed -i '/^'$num'.*/d' record
    echo "delete successful"
   m=`cat record | wc -l`
   z=1
    for  y  in `cat record `
      do      
        u=`echo $y  |  awk -F. '{print $2}'`
        o=`echo $y | awk -F.  '{print $3}'`
        echo ""$z"."$u"."$o""  >> record            
        let z++
      done
      sed -i '1,'$m'd' record 
    sleep 3 
    void
   fi
done
}
report(){
vi   record
void
}


hep(){

clear
echo -ne "\033[40;36m "
echo "This  is  a  student's  record  manager  program"
sleep 3
void
}








display(){
        let z++

echo -e "\033[40;37m "
cat record
sleep 5
void
}






void(){
menu
case $choice  in 
1)
if [ !  -f record  ] && echo "No record！" ;then
sleep 3
void
else 
search
fi  ;;
2)
add ;;
3)
if [ !  -f record  ] && echo "No record！" ;then
sleep 3
void
else
delete 
fi ;;
4)
if [ !  -f record  ] && echo "No record！"  ;then
sleep 3
void
else
display 
fi ;;
5)
if [ !  -f record  ] && echo "No record！" ;then
sleep 3
void
else
report 
fi  ;;
H)
hep ;;
h)
hep ;;
Q)
echo -e "\033[0m"
clear
exit ;;
q)
echo -e "\033[0m"
clear
exit ;;
*)
echo "please enter  valid mode"
sleep 3
void
esac
}
void
