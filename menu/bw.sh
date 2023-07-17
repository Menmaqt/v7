#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
clear 
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e ""
echo -e "     \033[4;36;1;93mBANDWIDTH MONITOR MENU BY ZXMENMA\e[0m"
echo -e ""
echo -e "     (\e[36m01\e[0m) Lihat Total Bandwith Tersisa"
echo -e "     (\e[36m02\e[0m) Penggunaan Setiap 5 Menit"
echo -e "     (\e[36m03\e[0m) Penggunaan Setiap Jam"
echo -e "     (\e[36m04\e[0m) Penggunaan Setiap Hari"
echo -e "     (\e[36m05\e[0m) Penggunaan Setiap Bulan"
echo -e "     (\e[36m06\e[0m) Penggunaan Setiap Tahun"
echo -e "     (\e[36m07\e[0m) Penggunaan Tertinggi"
echo -e "     (\e[36m08\e[0m) Penggunaan Setiap Jam"
echo -e "     (\e[36m09\e[0m) Penggunaan Saat Ini"
echo -e "     (\e[36m10\e[0m) Penggunaan Aktif Saat Ini [5s]"
echo -e ""
echo -e "     (\e[31m•0\e[0m) \e[31mBACK TO SETTING MENU\033[0m"
echo -e ""
echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
echo -e ""
read -p " Select menu : "  opt
echo -e ""
case $opt in
1)
clear 
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e "     \033[4;36;1;93mTOTAL BANDWIDTH TERSISA \e[0m"

vnstat

echo -e ""
echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

2)
clear 
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e "     \033[4;36;1;93mTOTAL BANDWIDTH SETIAP 5 MINIT \e[0m"


vnstat -5

echo -e ""
echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

3)
clear 
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e "     \033[4;36;1;93mTOTAL BANDWIDTH SETIAP JAM \e[0m"


vnstat -h

echo -e ""
echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

4)
clear 
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e "     \033[4;36;1;93mTOTAL BANDWIDTH HARIAN \e[0m"


vnstat -d

echo -e ""
echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

5)
clear 
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e "     \033[4;36;1;93mTOTAL BANDWIDTH BULANAN \e[0m"


vnstat -m

echo -e ""
echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

6)
clear 
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e "     \033[4;36;1;93mTOTAL BANDWIDTH TAHUNAN \e[0m"


vnstat -y

echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Kemabli ke menu pencet enter"
bw
;;

7)
clear 
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e "     \033[4;36;1;93mTOTAL BANDWIDTH TERTINGGI \e[0m"


vnstat -t

echo -e ""
echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

8)
clear 
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e "     \033[4;36;1;93mTOTAL BANDWIDTH DIGUNAKAN SETIAP JAM \e[0m"


vnstat -hg

echo -e ""
echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

9)
clear 
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e "     \033[4;36;1;93mTOTAL BANDWIDTH SEKARANG \e[0m"
echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e "   Press [ Ctrl+C ] • To-Exit"
echo -e ""

vnstat -l

echo -e ""
echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

10)
clear 
echo -e "\033[1;93m┌─────────────────────────────────────────────────────┐\e[0m"
echo -e "     \033[4;36;1;93mTRAFIK PENGGUNAAN BANDWIDTH \e[0m"


vnstat -tr

echo -e ""
echo -e "\033[1;93m└─────────────────────────────────────────────────────┘\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

0)
sleep 1
menu-set
;;

*)
echo -e ""
echo -e "Anda salah tekan"
sleep 1
bw
;;
esac
