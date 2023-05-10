#!/bin/bash

sleep 5
service passwall stop
cd /tmp
wget https://downloads.openwrt.org/releases/22.03.5/packages/mipsel_24kc/packages/xray-core_1.8.1-1_mipsel_24kc.ipk
opkg install xray-core_1.8.1-1_mipsel_24kc.ipk -d ram
rm xray-core_1.8.1-1_mipsel_24kc.ipk
service passwall restart
cd /root/

echo "That's OK!"
