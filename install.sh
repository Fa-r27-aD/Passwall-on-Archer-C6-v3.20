#!/bin/bash

# install req
opkg update
opkg remove dnsmasq
opkg install dnsmasq-full
opkg install kmod-nft-socket
opkg install kmod-nft-tproxy
opkg install kmod-nft-nat

****

wget https://raw.githubusercontent.com/Fa-r27-aD/Passwall-on-Archer-C6-v3.20/main/installcore.sh

chmod 777 installcore.sh

cd /etc/init.d/

wget https://raw.githubusercontent.com/Fa-r27-aD/Passwall-on-Archer-C6-v3.20/main/runservice

chmod +x /etc/init.d/runservice

/etc/init.d/runservice enable

echo -e "${GREEN}Starting Service ... ${ENDCOLOR}"

/etc/init.d/runservice start

echo -e "${GREEN} Done! ${ENDCOLOR}"
