#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
clear
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e ""
echo -e "     \033[4;36;1;93mXRAY VMESS MENU BY ZXMENMA\E[0m"
echo -e ""
echo -e "     (\e[36m01\e[0m) Create Account Vmess  "
echo -e "     (\e[36m02\e[0m) Trial Account Vmess   "
echo -e "     (\e[36m03\e[0m) Extending Account Vmess "
echo -e "     (\e[36m04\e[0m) Delete Account Vmess    "
echo -e "     (\e[36m05\e[0m) Check User Login Vmess    "
echo -e "     (\e[36m06\e[0m) User list created "
echo -e ""
echo -e "     (\e[31m0\e[0m) \e[31mBACK TO MENU\033[0m"
echo -e ""
echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
echo -e ""
read -p " Select menu : "  opt
echo -e ""
case $opt in
1) clear ; add-ws ; exit ;;
2) clear ; trialvmess ; exit ;;
3) clear ; renew-ws ; exit ;;
4) clear ; del-ws ; exit ;;
5) clear ; cek-ws ; exit ;;
6) clear ; cat /etc/log-create-vmess.log ; exit ;;
0) clear ; menu ; exit ;;
*) echo "Anda salah tekan" ; menu-vmess ;;
esac
