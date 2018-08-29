#!/bin/bash
if  !  grep  -q  "^#!"   $1;then
sed -i  '1i #!/bin/bash' $1 
sed -i  '2i #Description:' $1
fi  
vim +2 $1
  
