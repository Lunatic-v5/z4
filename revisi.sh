#!/bin/bash

echo -e "────────────────────"
echo -e " ⚠️UPDATE ALL MENU⚠️"
echo -e"────────────────────"
sleep 5
rm -rf /tmp/menu
cd /tmp/
chmod +x /tmp/menu
chmod +x /tmp/revisi
#Repo
REPO="https://raw.githubusercontent.com/Lunatic-v5/z4/Lunatic/"
#Download
wget -q -O /tmp/menu "${REPO}ulang/menu" >/dev/null 2>&1
wget -q -O /tmp/vmess "${REPO}ulang/vmess" >/dev/null 2>&1
wget -q -O /tmp/vless "${REPO}ulang/vless" >/dev/null 2>&1
wget -q -O /tmp/trojan "${REPO}ulang/trojan" >/dev/null 2>&1
wget -q -O /tmp/shadowsocks "${REPO}ulang/shadowsocks" >/dev/null 2>&1
wget -q -O /tmp/wbmn "${REPO}ulang/shadowsocks" >/dev/null 2>&1
wget -q -O /tmp/xp "${REPO}ulang/xp" >/dev/null 2>&1
#Add
wget -q -O /tmp/add-ssh"${REPO}ulang/add-ssh/ >/dev/null 2>&1
wget -q -O /tmp/add-ws"${REPO}ulang/add-ws" >/dev/null 2>&1
wget -q -O /tmp/add-tr"${REPO}ulang/add-tr" >/dev/null 2>&1
wget -q -O /tmp/add-vless "${REPO}ulang/vless" >/dev/null 2>&1
#Auto
wget -q -O /tmp/auto-kill"${REPO}ulang/auto-kill" >/dev/null 2>&1
wget -q -O /tmp/autoreboot "${REPO}ulang/autoreboot" >/dev/null 2>&1
#Cekk
wget -q -O /tmp/cek-ss "${REPO}ulang/cek-ss" >/dev/null 2>&1
wget -q -O /tmp/cek-tr "${REPO}ulang/cek-tr" >/dev/null 2>&1
wget -q -O /tmp/cek-ssh "${REPO}ulang/cek-ssh" >/dev/null 2>&1
wget -q -O /tmp/cek-vless "${REPO}ulang/cek-vless" >/dev/null 2>&1
wget -q -O /tmp/cek-ws "${REPO}ulang/cek-ws" >/dev/null 2>&1
#Dell
wget -q -O /tmp/del-tr "${REPO}ulang/" >/dev/null 2>&1
wget -q -O /tmp/del-ss "${REPO}ulang/menu" >/dev/null 2>&1
wget -q -O /tmp/del-vless"${REPO}ulang/" >/dev/null 2>&1
wget -q -O /tmp/del-ssh "${REPO}ulang/" >/dev/null 2>&1
wget -q -O /tmp/del-ws "${REPO}ulang/menu" >/dev/null 2>&1
#Renew
wget -q -O /tmp/renew-ss "${REPO}ulang/renew-ss" >/dev/null 2>&1
wget -q -O /tmp/renew-ssh"${REPO}ulang/renew-ssh" >/dev/null 2>&1
wget -q -O /tmp/renew-ws "${REPO}ulang/renew-ws" >/dev/null 2>&1
wget -q -O /tmp/renew-tr "${REPO}ulang/renew-tr" >/dev/null 2>&1
wget -q -O /tmp/renew-vless"${REPO}ulang/renew-vless" >/dev/null 2>&1
#Triall
wget -q -O /tmp/triall-tr "${REPO}ulang/triall-tr" >/dev/null 2>&1
wget -q -O /tmp/triall-ss"${REPO}ulang/triall-ss" >/dev/null 2>&1
wget -q -O /tmp/triall-ws "${REPO}ulang/triall-ws" >/dev/null 2>&1
wget -q -O /tmp/triall-vless "${REPO}ulang/triall-vless" >/dev/null 2>&1
wget -q -O /tmp/triall-ssh "${REPO}ulang/triall-ssh" >/dev/null 2>&1
#User
wget -q -O /tmp/user-tr "${REPO}ulang/user-tr" >/dev/null 2>&1
wget -q -O /tmp/user-vl "${REPO}ulang/user-vl" >/dev/null 2>&1
wget -q -O /tmp/user-ssh "${REPO}ulang/user-ssh" >/dev/null 2>&1
wget -q -O /tmp/user-ws "${REPO}ulang/user-ws" >/dev/null 2>&1
#
wget -q -O /tmp/xraylimit"${REPO}ulang/xraylimit" >/dev/null 2>&1
#Chmod
cd /tmp/
chmod +x /tmp/menu
chmod +x /tmp/vmess
chmod +x /tmp/vless
chmod +x /tmp/trojan
chmod +x /tmp/shadowsocks
#
chmod +x /tmp/cek-ss
chmod +x /tmp/cek-ws
chmod +x /tmp/cek-vless
chmod +x /tmp/cek-ssh
chmod +x /tmp/cek-tr
#
chmod +x /tmp/del-tr
chmod +x /tmp/del-ss
chmod +x /tmp/del-ws
chmod +x /tmp/del-ssh
chmod +x /tmp/del-vless
#
chmod +x /tmp/add-tr
chmod +x /tmp/add-ss
chmod +x /tmp/add-ws
chmod +x /tmp/add-ssh
chmod +x /tmp/add-vless
#
chmod +x /tmp/renew-ss
chmod +x /tmp/renew-ws
chmod +x /tmp/renew-ssh
chmod +x /tmp/renew-vless
chmod +x /tmp/renew-tr
#
chmod +x /tmp/triall-ws
chmod +x /tmp/triall-ssh
chmod +x /tmp/triall-vless
chmod +x /tmp/triall-tr
chmod +x /tmp/triall-ss
#
chmod +x /tmp/user-vl
chmod +x /tmp/user-ws
chmod +x /tmp/user-ssh
chmod +x /tmp/user-vless
chmoe +x /tmp/user-tr
#
rm -rf revisi.sh
echo "install Suksess"
echo "menuju menu dalam 5 detik"
sleep 5
clear
menu