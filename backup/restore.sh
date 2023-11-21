#!/bin/bash
# SL
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
green='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
clear
echo -e "===========================" | lolcat
echo -e "            RESTORE DATA VPS            " | lolcat
echo -e "===========================" | lolcat
echo -e ""
echo -e "⭐Masukan Link backup " | lolcat
echo -e "⭐Untuk Merestor data Vps" | lolcat
echo -e ""
echo -e "===========================" | lolcat
echo -e ""
read -rp "Link File Backup :   " -e url
wget -O backup.zip "$url"
unzip backup.zip
rm -f backup.zip
echo "RESTORING DATA VPS......" | lolcat
sleep 2
cp -r /etc/xray/config.json /root/backup/ &> /dev/null
cp -r /root/backup/scrz-prem /var/lib/ &> /dev/null
cp -r /root/backup/.acme.sh /root/ &> /dev/null
cp -r /root/backup/xray /etc/ &> /dev/null
cp -r /root/backup/nginx /etc/nginx/ &> /dev/null
cp -r /root/backup/public_html /home/vps/ &> /dev/null
cp /root/backup/crontab /etc/ &> /dev/null
cp -r /root/backup/cron.d /etc/ &> /dev/null
cp -r /var/www/html /root/backup/html &> /dev/null
rm -fr /root/backup &> /dev/null
# echo Start Restore
cd /root/backup
cp passwd /etc/
cp group /etc/
cp shadow /etc/
cp gshadow /etc/
cp chap-secrets /etc/ppp/
cp passwd1 /etc/ipsec.d/passwd
cp -r crot /var/lib/
cp -r sstp /home/
cp -r xray /etc/
cp -r trojan-go /etc/
cp -r shadowsocksr /usr/local/
cp -r public_html /home/vps/
cp crontab /etc/
strt
rm -rf /root/backup
rm -f backup.zip
echo -e "[ ${green}INFO${NC} ] • Done Restor Data.."
echo ""
read -p "press Enter Back to Menu"
menu
