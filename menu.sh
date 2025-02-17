#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
IZIN=$( curl https://raw.githubusercontent.com/LeXcZxMoDz9/alok/main/ipvps | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Please Contact Admin"
echo "Telegram t.me/sshsedang4"
echo "WA 082311190332"
rm -f setup.sh
exit 0
fi
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;31m"
m1="\033[1;34m"
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ifconfig.me/ip )
echo -e ""
echo -e "SSH SEDANG NETWORK"
echo -e ""
echo -e "$m-----------------------------------------------------------------$y"
echo -e "$m1 IP Vps       : $IPVPS"
echo -e "$m1 Isp Vps Name : $ISP"
echo -e "$m1 City         : $CITY"
echo -e "$m1 Waktu        : $WKT"
echo -e ""
echo -e "$m=============================-$yy MENU $m-=============================$y"
echo -e "* menu         : List of Main Commands"
echo -e ""
echo -e "$m=========================-$yy SSH & OPENVPN $m-========================$y"
echo -e "* usernew      : Create SSH & OpenVPN Account"
echo -e "* trial        : Generate SSH & OpenVPN Trial Account"
echo -e "* renew        : Extending SSH & OpenVPN Account Active Life"
echo -e "* deluser      : Delete SSH & OpenVPN Account"
echo -e "* cek          : Check User Login SSH & OpenVPN"
echo -e "* member       : Daftar Member SSH & OpenVPN"
echo -e "* delete       : Delete User Expired SSH & OpenVPN"
echo -e "* autokill     : Set up Autokill SSH"
echo -e "* ceklim       : Displays Users Who Do Multi Login SSH"
echo -e "* restart      : Restart Service Dropbear, Squid3, OpenVPN dan SSH"
echo -e ""
echo -e "$m===========================-$yy WIREGUARD $m-=========================$y"
echo -e "* add-wg       : Create Wireguard Account"
echo -e "* del-wg       : Delete Wireguard Account"
echo -e "* cek-wg       : Check User Login Wireguard"
echo -e "* renew-wg     : Extending Wireguard Account Active Life"
echo -e "* wg show      : Check Wireguard User Interface"
echo -e ""
echo -e "$m=============================-$yy L2TP $m-============================$y"
echo -e "* add-l2tp     : Creating L2TP Account"
echo -e "* del-l2tp     : Deleting L2TP Account"
echo -e "* renew-l2tp   : Extending L2TP Account Active Life"
echo -e ""
echo -e "$m=============================-$yy PPTP $m-============================$y"
echo -e "* add-pptp     : Create Account PPTP"
echo -e "* del-pptp     : Delete PPTP Account"
echo -e "* renew-pptp   : Extending PPTP Account Active Life"
echo -e "* cek-pptp     : Check User Login PPTP"
echo -e ""
echo -e "$m=============================-$yy SSTP $m-============================$y"
echo -e "* add-sstp     : Create Account SSTP"
echo -e "* del-sstp     : Delete SSTP Account"
echo -e "* renew-sstp   : Extending SSTP Account Active Life"
echo -e "* cek-sstp     : Check User Login SSTP"
echo -e ""
echo -e "$m=============================-$yy SSR $m-=============================$y"
echo -e "* add-ssr      : Create SSR Account"
echo -e "* del-ssr      : Deleting SSR Account"
echo -e "* renew-ssr    : Extending SSR Account Active Life"
echo -e "* ssr          : Show Other SSR Menu"
echo -e ""
echo -e "$m========================-$yy SHADOWSOCKS OBFS $m-=====================$y"
echo -e "* add-ss       : Creating Shadowsocks Account"
echo -e "* del-ss       : Delete Shadowsocks Account"
echo -e "* renew-ss     : Extending Shadowsocks Account Active Life"
echo -e "* cek-ss       : Check User Login Shadowsocks"
echo -e ""
echo -e "$m=============================-$yy VMESS $m-===========================$y"
echo -e "* add-ws       : Create V2RAY Vmess Websocket Account"
echo -e "* del-ws       : Deleting V2RAY Vmess Websocket Account"
echo -e "* renew-ws     : Extending Vmess Account Active Life"
echo -e "* cek-ws       : Check User Login V2RAY"
echo -e "* cert2vray    : Renew Certificate V2RAY Account"
echo -e ""
echo -e "$m=============================-$yy VLESS $m-===========================$y"
echo -e "* add-vless    : Create V2RAY Vless Websocket Account"
echo -e "* del-vless    : Deleting V2RAY Vless Websocket Account"
echo -e "* renew-vless  : Extending Vless Account Active Life"
echo -e "* cek-ws       : Check User Login V2RAY"
echo -e ""
echo -e "$m=============================-$yy TROJAN $m-==========================$y"
echo -e "* add-tr       : Create Trojan Account"
echo -e "* del-tr       : Deleting Trojan Account"
echo -e "* renew-tr     : Extending Trojan Account Active Life"
echo -e "* cek-tr       : Check User Login Trojan"
echo -e ""
echo -e "$m=============================-$yy SYSTEM $m-==========================$y"
echo -e "* add-host     : Add Or Change Subdomain Host For VPS"
echo -e "* change-port  : Change Port Of Some Service"
echo -e "* autobackup   : Autobackup Data VPS"
echo -e "* backup       : Backup Data VPS"
echo -e "* restore      : Restore Data VPS"
echo -e "* wbmn         : Webmin Menu"
echo -e "* kernel-updt  : Update To Latest Kernel"
echo -e "* limit-speed  : Limit Bandwith Speed Server"
echo -e "* ram          : Check Usage of VPS Ram"
echo -e "* reboot       : Reboot VPS"
echo -e "* speedtest    : Speedtest VPS"
echo -e "* update       : Update To Latest Script Version"
echo -e "* info         : Displaying System Information"
echo -e "* about        : Info Script Auto Install"
echo -e "* exit         : Exit From VPS "
echo -e ""
echo -e "$m================================================================$y"
echo -e " $yy SSH SEDANG $y"
