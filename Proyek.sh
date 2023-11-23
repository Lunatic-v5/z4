#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########################
BURIQ () {
    curl -sS https://raw.githubusercontent.com/Lunatic-v5/IZIN/Lunatic/ip > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/Lunatic-v5/IZIN/Lunatic/ip | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/Lunatic-v5/IZIN/Lunatic/ip | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
COLOR1='\033[0;33m'
COLOR2='\033[0;39m'
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION

if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/Lunatic-v5/IZIN/Lunatic/ip | grep $MYIP | awk '{print $3}')
fi
UDPX="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
# COLOR VALIDATION
clear
WB='\e[37;1m'
BICyan='\033[1;96m'       # Cyan
Cyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
CYAN='\033[0;96m'        # Cyan
YELLOW='\033[0;93m'      # Yellow
NC='\e[0m'
#
UPDATE="https://raw.githubusercontent.com/Lunatic-v5/z4/Lunatic/"
#Bottt
BOT="https://raw.githubusercontent.com/myridwan/src/ipuk/"
#ingfo
ISP=$(cat /etc/xray/isp)
NS=$(cat /etc/xray/dns)
CITY=$(cat /etc/xray/city)
IPVPS=$(curl -s ipv4.icanhazip.com)
domain=$(cat /etc/xray/domain)
RAM=$(free -m | awk 'NR==2 {print $2}')
rak=$(free -m | awk 'NR==2 {print $3}')
MEMOFREE=$(printf '%-1s' "$(free -m | awk 'NR==2{printf "%.2f%", $3*100/$2 }')")
vcp=$(printf '%-0.00001s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
MODEL=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
CORE=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")
Namx="Lunatic Project"
DATEVPS=$(date +'%d-%m-%Y')
TIMEZONE=$(printf '%(%H:%M:%S)T')
SERONLINE=$(uptime -p | cut -d " " -f 2-10000)

nginx=$( systemctl status nginx | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
    status_nginx="${GREEN}ON${NC}"
else
    status_nginx="${RED}OFF${NC}"
fi

xray=$( systemctl status xray | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $xray == "running" ]]; then
    status_xray="${GREEN}ON${NC}"
else
    status_xray="${RED}OFF${NC}"
fi

haproxy=$( systemctl status haproxy | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $xray == "running" ]]; then
    status_haproxy="${GREEN}ON${NC}"
else
    status_haproxy="${RED}OFF${NC}"
fi

#Download/Upload today
daily_usage=$(vnstat -d --oneline | awk -F\; '{print $6}' | sed 's/ //')
monthly_usage=$(vnstat -m --oneline | awk -F\; '{print $11}' | sed 's/ //')
DATE=`date -d "0 days" +"%Y-%m-%d"`
#KonZ
# vla = vless
vlx=$(grep -c -E "^#vl# " "/etc/xray/config.json")
let vla=$vlx/2
#vma = vmess
vmc=$(grep -c -E "^#vm# " "/etc/xray/config.json")
let vma=$vmc/2
# ssh1 = ssh
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
# trx = trojan
trx=$(grep -c -E "^#tr# " "/etc/xray/config.json")
let trb=$trx/2
# ssa = sadowsok
ssx=$(grep -c -E "^#ss# " "/etc/xray/config.json")
let ssa=$ssx/2
###validation
# echo -e "${HIJAU}│${NC} ${YELLOW}❐ REGISTRASI ${NC}          : ${Cyan}$Name${NC}"
# echo -e "${HIJAU}│${NC} ${YELLOW}❐ EXP SCRIPT ${NC}   : ${Cyan}$exp ( $exp2 ) ( $Exp ) ${NC}"
# echo -e "${HIJAU}│  \033[0m ${BOLD}${YELLOW}SSH     VMESS       VLESS      TROJAN       SHADOWSOCKS$NC ${BICyan} "
# echo -e "${HIJAU}│  \033[0m ${BICyan} $ssh1       $vma           $vla          $trb              $ssa   $NC   ${BICyan} "
#################### color Validation ###################
#
#HIGH TENSY ( code nomor = 9 )
HR="\e[1;91m" #| Red 
HG="\e[1;92m" #| Green  
HY="\e[1;93m" #| Yellow 
HB="\e[1;94m" #| Blue   
HP="\e[1;95m" #| Purple 
HC="\e[1;96m" #| Cyan   
HW="\e[1;97m" #| White  
#Background ( code nomor = 4 )
BR="\e[41m" #| Red    
BG="\e[42m" #| Green  
BY="\e[43m" #| Yellow 
BB="\e[44m" #| Blue   
BP="\e[45m" #| Purple 
BC="\e[46m" #| Cyan   
BW="\e[47m" #| White  
#Underline ( code Nomor = 5)
UR="\e[5;31" # Red
UG="\e[5;32" # Green
UY="\e[5;33" # Yellow
UB="\e[5;34" # Blue
UP="\e[5;35" # Purple
UC="\e[5;36" # Cyan
UW="\e[5;37" # White
NC="\033[0m" # Text Reset
#
clear
echo "cecking"
echo -e "${BICyan}┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "\E[44;1;39m                     ⇱ LUNATIC TUNNELING ⇲              \E[0m"
echo -e "${BICyan}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "${HIJAU}┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "${HIJAU}│${NC}${YELLOW}❐ OPS ${NC}  : $MODEL"
echo -e "${HIJAU}│${NC}${YELLOW}❐ CPU ${NC}  : $vcp%"
echo -e "${HIJAU}│${NC}${YELLOW}❐ RAM ${NC}  : $RAM MB  "
echo -e "${HIJAU}│${NC}${YELLOW}❐ DOM ${NC}  : $domain"
echo -e "${HIJAU}│${NC}${YELLOW}❐ VPS ${NC}  : $IPVPS"
echo -e "${HIJAU}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "     [ ${Cyan}XRAY:${NC} ${status_xray} ]      [ ${Cyan}NGINX:${NC} ${status_nginx} ]      [ ${Cyan}HAPROXY:${NC} ${status_haproxy} ]"
echo -e "${HIJAU}┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "${HIJAU}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "${BICyan}┌────────────────────────────────────────────────────────────┐${NC}"
echo -e " ${BICyan}01📨${NC} ${CYAN}ssh / Libev         $NC  ${BICyan}[${BIWhite}11${BICyan}]${BIRed} • ${NC}${CYAN}CHANGE DOMAIN $NC"
echo -e " ${BICyan}02📨${NC} ${CYAN}vmess / Xray      $NC  ${BICyan}[${BIWhite}12${BICyan}]${BIRed} • ${NC}${CYAN}CHANGE BANNER $NC"
echo -e " ${BICyan}03📨${NC} ${CYAN}vless / Xray      $NC  ${BICyan}[${BIWhite}13${BICyan}]${BIRed} • ${NC}${CYAN}RESTART SERVICE $NC"
echo -e " ${BICyan}04📨${NC} ${CYAN}trojan Libev     $NC  ${BICyan}[${BIWhite}14${BICyan}]${BIRed} • ${NC}${CYAN}RESTART SERVER $NC"
echo -e " ${BICyan}05📨${NC} ${CYAN}ShDw Sck     $NC  ${BICyan}[${BIWhite}15${BICyan}]${BIRed} • ${NC}${CYAN}INSTALL UDP  $NC"
echo -e " ${BICyan}06📨${NC} ${CYAN}Running/serV $NC  ${BICyan}[${BIWhite}16${BICyan}]${BIRed} • ${NC}${CYAN}AUTO REBOOT $NC"
echo -e " ${BICyan}07📨${NC} ${CYAN}Backup MnaGer $NC  ${BICyan}[${BIWhite}17${BICyan}]${BIRed} • ${NC}${CYAN}UPDATE SCRIPT $NC"
echo -e " ${BICyan}08📨${NC} ${CYAN}Inf Port / Vpn       $NC  ${BICyan}[${BIWhite}18${BICyan}]${BIRed} • ${NC}${CYAN}CLEAR EXP ACCOUNT $NC"
echo -e " ${BICyan}09📨${NC} ${CYAN}MoonT Vps Info        $NC  ${BICyan}[${BIWhite}19${BICyan}]${BIRed} • ${NC}${CYAN}CLEAR LOG $NC"
echo -e " ${BICyan}10📨${NC} ${CYAN}Spedtest LuA       $NC  ${BICyan}[${BIWhite}20${BICyan}]${BIRed} • ${NC}${CYAN}MENU BOT SSH $NC"
echo -e "${BICyan}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "\E[44;1;39m                     ⇱ LUNATIC TUNNELING ⇲                    \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
read -p "Select From Options [ 1 - 20 ] : " menu
case $menu in
1) clear ;
    ssh
    ;;
2) clear ;
    vmess
    ;;
3) clear ;
    vless
    ;;
4) clear ;
    trojan
    ;;
5) clear ;
    shadowsocks
    ;;
6) clear ;
    run
    ;;
7) clear ;
    get-backres
    ;;
8) clear ;
    portin
    ;;
9) clear ;
    gotop
    ;;
10) clear ;
    clear
    speedtest
    ;;
11) clear ;
    get-domain
    ;;
12) clear ;
    nano /etc/issue.net
    ;;
13) clear ;
    seres
    ;;
14) clear ;
    reboot
    ;;

15) clear ;
    wget --load-cookies /tmp/cookies.txt ${UDPX} -O install-udp && rm -rf /tmp/cookies.txt && chmod +x install-udp && ./install-udp
    ;;
16) clear ;
    auto-reboot
    ;;
17) clear ;
    wget ${UPDATE}update.sh && chmod +x update.sh && ./update.sh
    ;;
18) clear ;
   xp
   ;;
19) clear ;
   logclean
   ;;
20) clear ;
   wget ${BOT}xolpanel.sh && chmod +x xolpanel.sh && ./xolpanel.sh 
   ;;
*)
    exit
    ;;
esac

