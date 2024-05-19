#!/bin/sh

# Sleep for 5 seconds to ensure any previous tasks are completed
sleep 5

# Stop the passwall and passwall2 services
service passwall stop
service passwall2 stop

# Change to the /tmp directory
cd /tmp

# Download the xray-core package & geo-file packages
wget https://mirror-03.infra.openwrt.org/releases/23.05.3/packages/mipsel_24kc/packages/xray-core_1.8.11-1_mipsel_24kc.ipk
wget https://mirror-03.infra.openwrt.org/releases/23.05.3/packages/mipsel_24kc/packages/v2ray-geoip_202404250042-1_all.ipk
wget https://mirror-03.infra.openwrt.org/releases/23.05.3/packages/mipsel_24kc/packages/v2ray-geosite_20240426060244-1_all.ipk

# Install the xray-core & geo-file packages to the RAM directory
opkg install xray-core_1.8.11-1_mipsel_24kc.ipk -d ram
opkg install v2ray-geoip -d ram
opkg install v2ray-geosite -d ram

# Remove the downloaded package file to clean up
rm xray-core_1.8.11-1_mipsel_24kc.ipk
rm v2ray-geoip_202404250042-1_all.ipk
rm v2ray-geosite_20240426060244-1_all.ipk

# Restart the passwall and passwall2 services
service passwall restart
service passwall2 restart

# Log completion
echo "Script completed successfully"

# Change back to the /root directory
cd /root/
