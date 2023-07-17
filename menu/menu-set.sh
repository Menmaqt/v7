#!/bin/bash
MYIP=$(wget -qO- ipv4.icanhazip.com);
echo "Checking VPS"
clear
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e ""
echo -e "     \033[4;36;1;93mSETTING MENU BY ZXMENMA\e[0m"
echo -e ""
echo -e "     (\e[36m01\e[0m) Speedtest VPS"
echo -e "     (\e[36m02\e[0m) Set Auto Reboot"
echo -e "     (\e[36m03\e[0m) Restart All Service"
echo -e "     (\e[36m04\e[0m) Check Bandwith"
echo -e "     (\e[36m05\e[0m) Install TCP BBR"
echo -e "     (\e[36m06\e[0m) Change Banner "
echo -e "     (\e[36m07\e[0m) About The Script"
echo -e ""
echo -e "     (\e[31m0\e[0m) \e[31mBACK TO MENU\033[0m"
echo -e ""
echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; speedtest ; exit ;;
2) clear ; jam ; exit ;;
3) clear ; restart ; exit ;;
4) clear ; bw ; exit ;;
5) clear ; m-tcp ; exit ;;
6) clear ; nano /etc/issue.net ; exit ;;
7) clear ; about ; exit ;;
0) clear ; menu ; exit ;;
*) echo -e "" ; echo "Anda salah tekan" ; sleep 1 ; menu-set ;;
esac
