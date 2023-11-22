#!/bin/bash
clear
cd /usr/bin
HENCET="https://raw.githubusercontent.com/Lunatic-v5/z4/Lunatic/ulang/"
wget -q -O "${HENCET}ssh"
wget -q -O "${HENCET}vmess"
wget -q -O "${HENCET}vless"
wget -q -O "${HENCET}trojan"
wget -q -O "${HENCET}shadowsocks"
#add
wget -q -O "${HENCET}add-ssh"
wget -q -O "${HENCET}add-ws"
wget -q -O "${HENCET}add-vless"
wget -q -O "${HENCET}add-tr"
wget -q -O "${HENCET}add-ss"
#del
wget -q -O "${HENCET}del-ssh"
wget -q -O "${HENCET}del-ws"
wget -q -O "${HENCET}del-vless"
wget -q -O "${HENCET}del-tr"
wget -q -O "${HENCET}del-ss"
#renew
wget -q -O "${HENCET}renew-ssh"
wget -q -O "${HENCET}renew-ws"
wget -q -O "${HENCET}renew-vless"
wget -q -O "${HENCET}renew-tr"
wget -q -O "${HENCET}renew-ss"
#triall
wget -q -O "${HENCET}triall-ssh"
wget -q -O "${HENCET}triall-ws"
wget -q -O "${HENCET}triall-vless"
wget -q -O "${HENCET}triall-tr"
wget -q -O "${HENCET}triall-ss"
#cek
wget -q -O "${HENCET}cek-ssh"
wget -q -O "${HENCET}cek-wss"
wget -q -O "${HENCET}cek-vless"
wget -q -O "${HENCET}cek-tr"
wget -q -O "${HENCET}cek-ss"
#user
wget -q -O "${HENCET}user-ssh"
wget -q -O "${HENCET}user-ws"
wget -q -O "${HENCET}user-vl"
wget -q -O "${HENCET}user-tr"
wget -q -O "${HENCET}user-ss"
#random
wget -q -O "${HENCET}seres"
wget -q -O "${HENCET}run"
wget -q -O "${HENCET}wbmn"
wget -q -O "${HENCET}sshws"
wget -q -O "${HENCET}tendang"
#
wget -q -O "${HENCET}xp"
wget -q -O "${HENCET}xraylimit"
wget -q -O "${HENCET}member"
wget -q -O "${HENCET}get-backres"
wget -q -O "${HENCET}logclean"
#
wget -q -O "${HENCET}kvmswap"
wget -q -O "${HENCET}get-domain"
wget -q -O "${HENCET}vless"
wget -q -O "${HENCET}trojan"
wget -q -O "${HENCET}shadowsocks"
wget -q -O "${HENCET}autokill"
#
cd /usr/bin
chmod +x menu
chmod +x ssh
chmod +x vmess
chmod +x vless
chmod +x trojan
chmod +x shadowshocks
#add
chmod +x add-ssh
chmod +x add-ws
chmod +x add-vless
chmod +x add-tr
chmod +x add-ss
#triall
chmod +x triall-ssh
chmod +x triall-ws
chmod +x triall-vless
chmod +x triall-tr
chmod +x triall-ss
#renew
chmod +x renew-ssh
chmod +x renew-ws
chmod +x renew-vless
chmod +x renew-tr
chmod +x renew-ss
#cek
chmod +x cek-ssh
chmod +x cek-ws
chmod +x cek-vless
chmod +x cek-tr
chmod +x cek-ss
#user
chmod +x user-ssh
chmod +x user-ws
chmod +x user-vl
chmod +x user-tr
chmod +x user-ss
#del
chmod +x del-ssh
chmod +x del-ws
chmod +x del-vless
chmod +x del-tr
chmod +x del-ss
#random
chmod +x wbmn
chmod +x xraylimit
chmod +x get-backres
chmod +x get-domain
chmod +x logclean
#
chmod +x xp
chmod +x m-bandwith
chmod +x kvmswap
chmod +x member
chmod +x autokill
#
chmod +x run
chmod +x seres
chmod +x sshws
chmod +x tendang
#
clear
rm -rf rilog-all
echo -e " akan Ke Menu dalam 8 detik"
sleep 8
menu
