#!/bin/bash
MYIP=$(wget -qO- ipv4.icanhazip.com);
echo "Checking VPS"
clear
cekray=`cat /root/log-install.txt | grep -ow "XRAY" | sort | uniq`

clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -rp "Domain/Host: " -e host
echo ""
if [ -z $host ]; then
echo "????"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
menu
else
echo "IP=$host" > /var/lib/SIJA/ipvps.conf
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo "Dont forget to renew cert"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu-domain
fi
