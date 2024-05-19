#!/bin/bash

# Update package list and install required packages
opkg update

# Remove default dnsmasq and install dnsmasq-full
opkg remove dnsmasq
opkg install dnsmasq-full

sleep 5

# Install necessary kernel modules
opkg install kmod-nft-socket
opkg install kmod-nft-tproxy
opkg install kmod-nft-nat

# Change to the root directory
cd /root/

# Download and install needed packages
wget https://raw.githubusercontent.com/Fa-r27-aD/Passwall-on-Archer-C6-v3.20/main/Passwall.zip
unzip Passwall.zip
opkg install dns2socks_2.1-2_mipsel_24kc.ipk
sleep 2
opkg install dns2tcp_1.1.0-1_mipsel_24kc.ipk
sleep 2
opkg install ipt2socks_1.1.3-3_mipsel_24kc.ipk
sleep 2
opkg install shadowsocksr-libev-ssr-local_2.5.6-11_mipsel_24kc.ipk
sleep 2
opkg install shadowsocksr-libev-ssr-redir_2.5.6-11_mipsel_24kc.ipk
sleep 2
opkg install simple-obfs_0.0.5-1_mipsel_24kc.ipk
sleep 2
opkg install tcping_0.3-1_mipsel_24kc.ipk
sleep 2
opkg install trojan-plus_10.0.3-2_mipsel_24kc.ipk
sleep 2

# Download and install luci-app-passwall2 package
wget https://github.com/xiaorouji/openwrt-passwall2/releases/download/1.29-1/luci-23.05_luci-app-passwall2_1.29-1_all.ipk
opkg install luci-23.05_luci-app-passwall2_1.29-1_all.ipk

# Clean up the downloaded IPK files
rm *.ipk

# Download the installcore script
wget https://raw.githubusercontent.com/Fa-r27-aD/Passwall-on-Archer-C6-v3.20/main/installcore.sh
chmod 777 installcore.sh

# Download and set up the runservice init script
cd /etc/init.d/
wget https://raw.githubusercontent.com/Fa-r27-aD/Passwall-on-Archer-C6-v3.20/main/runservice
chmod +x runservice

# Enable and start the runservice
/etc/init.d/runservice enable

echo "Starting Service..."
/etc/init.d/runservice start

echo "Done!"
