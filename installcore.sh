#!/bin/bash

sleep 5
service passwall stop
service passwall2 stop
cd /tmp
wget https://downloads.openwrt.org/releases/22.03.5/packages/mipsel_24kc/packages/xray-core_1.8.3-1_mipsel_24kc.ipk
opkg install xray-core_1.8.3-1_mipsel_24kc.ipk -d ram
rm xray-core_1.8.3-1_mipsel_24kc.ipk
service passwall restart
service passwall2 restart
cd /root/

echo "That's OK!"
