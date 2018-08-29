menu(){
echo -e "\033[40;37m ###############----Menu-----##################### \033[0m"
echo -e "\033[41;30m # 1. Install Nainx                                \033[0m"
echo -e "\033[42;34m # 2. Install Mysql                                \033[0m"
echo -e "\033[43;34m # 3. Install PHP                                  \033[0m"
echo -e "\033[44;30m # 4. Exit Program                                 \033[0m"
echo -e "\033[45;30m ################################################# \033[0m"
}
choice(){
read -p   "please chioce a menu[1-9]:" select
}
install_nginx(){
id nginx &> /dev/null
if [  $? -ne 0   ];then 
useradd -s /sbin/nologin nginx
fi
if [  -f  nginx-1.12.1.tar.gz ];then
     tar -xf nginx-1.12.1.tar.gz 
     cd nginx-1.12.1
     yum -y install gcc pcre‐devel openssl‐devel zlib‐devel make 
     ./configure ‐‐prefix=/usr/local/nginx ‐‐with‐http_ssl_module 
     make 
     make install 
     ln ‐s /usr/local/nginx/sbin/nginx /usr/sbin/  
      else  
      echo "没有 Nginx 源码包"
fi
}

menu 
choice 
case $select  in 
1)
install_nginx
;;
*)
echo haha
esac



