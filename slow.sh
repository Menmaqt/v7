#!/bin/bash
###########- COLOR CODE -##############
BGreen='\e[1;32m'
NC='\e[0m'
clear
echo -e "\e[1;32m Wait in Process.. \e[0m"
wget https://raw.githubusercontent.com/Menmaqt/v7/main/slowdns/slowdns.sh && chmod +x slowdns.sh && ./slowdns.sh
echo -e "\e[1;32m Success.. \e[0m"
echo "Silakan Pointing Nameserver Anda Ke Cloudflare"
sleep 2
menu
