#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
clear
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e ""
echo -e "     \033[4;36;1;93mXRAY TROJAN MENU BY ZXMENMA\E[0m"
echo -e ""
echo -e "     (\e[36m01\e[0m) Create Account Trojan   "
echo -e "     (\e[36m02\e[0m) Trial Account Trojan   "
echo -e "     (\e[36m03\e[0m) Extending Account Trojan Active      "
echo -e "     (\e[36m04\e[0m) Delete Trojan Account     "
echo -e "     (\e[36m05\e[0m) Check User Login Trojan    "
echo -e "     (\e[36m06\e[0m) User list created  "
echo -e ""
echo -e "     (\e[31m0\e[0m) \e[31mBACK TO MENU\033[0m"
echo -e ""
echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; add-tr ;;
2) clear ; trialtrojan ;;
3) clear ; renew-tr ;;
4) clear ; del-tr ;;
5) clear ; cek-tr ;;
6) clear ; cat /etc/log-create-trojan.log ; exit ;;
0) clear ; menu ;;
*) echo "Anda salah tekan" ; sleep 1 ; menu-trojan ;;
esac
