#!/bin/bash
#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
REPO="https://raw.githubusercontent.com/Lunatic-v5/z4/Lunatic/"
CYAN='\033[0;96m'        # Cyan

BG="\E[44;1;39m"
NC="\E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "  ${BG} >>> INFORMASI UPDATE SCRIP <<< ${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "      •> Add UDP Server <•" | lolcat
echo -e "    •> Install UDP Server <•" | lolcat
echo -e "      •> Fix Bug Script <•" | lolcat
echo -e "     •> Script By @Lunatic <•" | lolcat
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "  ${BG} >>> THANKS TO LUNATIC <<< ${NC}" 
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
sleep 3
clear
echo "Proces......." | lolcat
sleep 3
rm -rf /tmp/menu
wget -O /tmp/menu.zip "${REPO}config/menu.zip" >/dev/null 2>&1
    mkdir /tmp/menu
  #  chmod +x /tmp/menu
    7z e  /tmp/menu.zip -o/tmp/menu/ >/dev/null 2>&1
    chmod +x /tmp/menu/*
    mv /tmp/menu/* /usr/sbin/
    apt pencet enter !!!
echo -e " [INFO] Update Successfully" | lolcat
mkdir -p /etc/ssh
mkdir -p /etc/vmx
mkdir -p /etc/vls
mkdir -p /etc/tr
mkdir -p /etc/ss
rm -rf update.sh
sleep 2
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu
exit
