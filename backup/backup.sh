#!/bin/bash
# SL
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[1;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[1;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
clear
IP=$(wget -qO- ipinfo.io/ip);
date=$(date +"%Y-%m-%d")
clear
email=$(cat /home/email)
if [[ "$email" = "" ]]; then
clear
echo -e "=========================" | lolcat
echo -e "           BACKUP DATA VPS" | lolcat
echo -e "=========================" | lolcat
echo ""
echo -e "⭐Masukan Email Aktif" | lolcat
echo -e "⭐Untuk Menerima Backup" | lolcat
echo -e "⭐Jika Proses backup selesai" | lolcat
echo -e "⭐Harap Copy/ salin Detail Backup Nya" | lolcat
echo ""
echo -e"=========================="
echo -e ""
read -rp "Input Your Email : " -e email
cat <<EOF>>/home/email
$email
EOF
fi
clear
echo -e "Processing Backup data......" | lolcat
sleep 2
cd /root/backup
rm -rf /root/backup
mkdir /root/backup
echo -e "[ ${GREEN}INFO${NC} ] • Restoring passwd data..."
sleep 1
cp /root/backup/passwd /etc/ &> /dev/null
echo -e "[ ${GREEN}INFO${NC} ] • Restoring group data..."
sleep 1
cp /root/backup/group /etc/ &> /dev/nul
echo -e "[ ${GREEN}INFO${NC} ] • Restoring shadow data..."
sleep 1
cp /root/backup/shadow /etc/ &> /dev/null
echo -e "[ ${GREEN}INFO${NC} ] • Restoring Gshadow data..."
sleep 1
cp /root/backup/gshadow /etc/ &> /dev/null
echo -e "[ ${GREEN}INFO${NC} ] • Restoring Xray data..."
sleep 1
cp /root/backup/xray /etc/ &> /dev/null
echo -e "[ ${GREEN}INFO${NC} ] • Restoring nsdomain data..."
sleep 1
cp /root/backup/nsdomain /etc/ &> /dev/null
echo -e "[ ${GREEN}INFO${NC} ] • Restoring slowdns data..."
sleep 1
echo -e "[ ${GREEN}INFO${NC} ] • Restoring shadowsock data..."
sleep 1
cp /root/backup/ss.conf /etc/shadowsocks-libev/ss.conf &> /dev/null
echo -e "[ ${GREEN}INFO${NC} ] • Restoring Slowdns data..."
cp /root/backup/slowdns /etc/ &> /dev/null
echo -e "[ ${GREEN}INFO${NC} ] • Restoring public html data..."
sleep 1
cp -r /home/vps/public_html backup/public_html
echo -e "[ ${GREEN}INFO${NC} ] • Restoring public cap-secrets..."
sleep 1
cp /root/backup/chap-secrets /etc/ppp/ &> /dev/null
echo -e "[ ${GREEN}INFO${NC} ] • Restoring passwd1 data..."
sleep 1
cp /root/backup/passwd1 /etc/ipsec.d/passwd &> /dev/null
clear
echo -e "[ ${GREEN}INFO${NC} ] • Restoring Configers data..."
sleep 3
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
echo -e "[ ${GREEN}DONE!!${NC} ] •"
sleep 2
#
clear
cd /root
zip -r $IP-$date.zip backup > /dev/null 2>&1
rclone copy /root/$IP-$date.zip dr:backup/
url=$(rclone link dr:backup/$IP-$date.zip)
id=(`echo $url | grep '^https' | cut -d'=' -f2`)
link="https://drive.google.com/u/4/uc?id=${id}&export=download"
echo -e "
Detail Backup 
==================================
IP VPS        : $IP
Link Backup   : $link
Tanggal       : $date
==================================
" | mail -s "Backup Data" $email
rm -rf /root/backup
rm -r /root/$IP-$date.zip
clear
echo -e "
Detail Backup 
==================================
IP VPS        : $IP
Link Backup   : $link
Tanggal       : $date
==================================
"
echo "Silahkan cek Kotak Masuk $email"
echo ""
read -p "Pencet Enter Back To menu"
menu

