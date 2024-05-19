#!/bin/sh

# Sleep for 5 seconds to ensure any previous tasks are completed
sleep 5

# Stop the passwall and passwall2 services
service passwall stop
service passwall2 stop

# Change to the /tmp directory
cd /tmp

# Download the xray-core package
if wget https://mirror-03.infra.openwrt.org/releases/23.05.3/packages/mipsel_24kc/packages/xray-core_1.8.11-1_mipsel_24kc.ipk; then
    echo "$(date) - Download successful" >> /var/log/installcore.log
else
    echo "$(date) - Download failed" >> /var/log/installcore.log
    exit 1
fi

# Install the xray-core package to the RAM directory
if opkg install xray-core_1.8.11-1_mipsel_24kc.ipk -d ram; then
    echo "$(date) - Installation successful" >> /var/log/installcore.log
else
    echo "$(date) - Installation failed" >> /var/log/installcore.log
    exit 1
fi

# Remove the downloaded package file to clean up
rm xray-core_1.8.11-1_mipsel_24kc.ipk

# Restart the passwall and passwall2 services
service passwall restart
service passwall2 restart

# Log completion
echo "$(date) - Script completed successfully" >> /var/log/installcore.log

# Change back to the /root directory
cd /root/
