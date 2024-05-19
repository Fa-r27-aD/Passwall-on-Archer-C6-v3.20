#!/bin/sh

# Sleep for 5 seconds to ensure any previous tasks are completed
sleep 5

# Stop the passwall and passwall2 services
service passwall stop
service passwall2 stop

# Change to the /tmp directory
cd /tmp

# Download the xray-core package
wget https://mirror-03.infra.openwrt.org/releases/23.05.3/packages/mipsel_24kc/packages/xray-core_1.8.11-1_mipsel_24kc.ipk

# Install the xray-core package to the RAM directory
opkg install xray-core_1.8.11-1_mipsel_24kc.ipk -d ram

# Remove the downloaded package file to clean up
rm xray-core_1.8.11-1_mipsel_24kc.ipk

# Install the Geo-files to the RAM directory
opkg install v2ray-geoip -d ram
opkg install v2ray-geosite -d ram

# Restart the passwall and passwall2 services
service passwall restart
service passwall2 restart

# Log completion
echo "Script completed successfully"

# Change back to the /root directory
cd /root/
