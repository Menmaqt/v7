#!/bin/bash
MYIP=$(wget -qO- ipv4.icanhazip.com);
echo "Checking VPS"
clear
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e ""
echo -e "     \033[4;36;1;93mSSH WS MENU BY ZXMENMA\e[0m"
echo -e ""
echo -e "     (\e[36m01\e[0m) Create SSH WS Account      "
echo -e "     (\e[36m02\e[0m) Trial SSH WS Account      "
echo -e "     (\e[36m03\e[0m) Renew SSH WS Account      "
echo -e "     (\e[36m04\e[0m) Delete SSH WS Account     "
echo -e "     (\e[36m05\e[0m) Check User Login SSH WS    "
echo -e "     (\e[36m06\e[0m) List Member SSH WS    "
echo -e "     (\e[36m07\e[0m) Auto Delete User Expired"
echo -e "     (\e[36m08\e[0m) Set up Autokill SSH "
echo -e "     (\e[36m09\e[0m) Check Users Multi Login "
echo -e "     (\e[36m10\e[0m) User list Created "
echo -e "     (\e[36m11\e[0m) Set Lock User "
echo -e "     (\e[36m12\e[0m) Set Unlock User "
echo -e ""
echo -e "     (\e[31m0\e[0m) \e[31mBACK TO MENU\033[0m"
echo -e ""
echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
echo -e ""
read -p " Select menu : "  opt
echo -e ""
case $opt in
1) clear ; usernew ; exit ;;
2) clear ; trial ; exit ;;
3) clear ; renew ; exit ;;
4) clear ; hapus ; exit ;;
5) clear ; cek ; exit ;;
6) clear ; member ; exit ;;
7) clear ; delete ; exit ;;
8) clear ; autokill ; exit ;;
9) clear ; ceklim ; exit ;;
10) clear ; cat /etc/log-create-ssh.log ; exit ;;
11) clear ; user-lock ; exit ;;
12) clear ; user-unlock ; exit ;;
0) clear ; menu ; exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu-sshh ;;
esac
