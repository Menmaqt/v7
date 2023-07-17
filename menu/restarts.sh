#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
clear 
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e ""
echo -e "   \033[4;36;1;93mRESTART VPN SERVICES MENU BY ZXMENMA\e[0m"
echo -e ""
echo -e "   (\e[36m01\e[0m) Restart All Services"
echo -e ""
echo -e "   (\e[31m•0\e[0m) \e[31mBACK TO SETTING MENU\033[0m"
echo -e ""
echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
echo -e ""
read -p " Select menu : " Restart
echo -e ""
sleep 1
clear
case $Restart in
                1)
                clear
                echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
                echo -e ""
                echo -e "  \033[4;36;1;93mRESTART VPN SERVICES NOW BY ZXMENMA\e[0m"
                echo -e ""
                echo -e "  [ \033[1;32mInfo\033[0m ] Restart Begin"
                sleep 1
                /etc/init.d/ssh restart
                /etc/init.d/dropbear restart
                /etc/init.d/stunnel4 restart
                /etc/init.d/openvpn restart
                /etc/init.d/fail2ban restart
                /etc/init.d/cron restart
                /etc/init.d/nginx restart
                /etc/init.d/squid restart
                echo -e "  [ \033[1;36mOK\033[0m ] Restarting xray (via systemctl) "
                systemctl restart xray
                systemctl restart xray.service
                echo -e "  [ \033[1;36mOK\033[0m ] Restarting badvpn (via systemctl) "
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500
                echo -e "  [ \033[1;36mOK\033[0m ] Restart Websocket (via systemctl) "
                systemctl restart sshws.service
                systemctl restart ws-dropbear.service
                systemctl restart ws-stunnel.service
                echo -e "  [ \033[1;32mSUCCES\033[0m ] \e[1;36mRestarted All Service\033[0m"
                echo ""
                echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
                echo ""
                read -n 1 -s -r -p "Press any key to back on system menu"
                restarts
                ;;                                                                         
                0)
                menu-set
                exit
                ;;
                *) echo -e "" ; echo "Anda salah tekan" ; sleep 1 ; restarts ;;               
        esac
