
# How To :

Install Xray-core on TP-Link Archer C6 V3.20 Temp Space :

Requirement : 50MB free Temp Space & 8MB free Disk Space

First you need to install Passwall or Passwall2 (Passwall2 is recommended). I recommend entering the commands in SSH, Just make sure that the installation of Passwall has prerequisites, which I put below the installation link for you. If you want to do this manually without SSH, you have to manually download the prerequisites and install them in LuCI in the Software section.

A. Install prerequisites:

1. Install "shadowsocksr-libev-ssr-local"
2. Install "shadowsocksr-libev-ssr-redir"
3. Install "simple-obfs"
4. Install "tcping"
```
opkg update
opkg install ipset
opkg install iptables 
opkg install iptables-legacy 
opkg install iptables-mod-conntrack-extra 
opkg install iptables-mod-iprange 
opkg install iptables-mod-socket 
opkg install iptables-mod-tproxy 
opkg install kmod-ipt-nat
opkg remove dnsmasq
opkg install dnsmasq-full
opkg install shadowsocksr-libev-ssr-local
opkg install shadowsocksr-libev-ssr-redir
opkg install simple-obfs
opkg install tcping
```
B. Install Service:

Enter the following command in SSH:
```
wget https://raw.githubusercontent.com/Fa-r27-aD/Passwall-on-Archer-C6-v3.20/main/install.sh && chmod 777 install.sh && sh install.sh
```

C. Install Passwall2:

1. Install with SSH:
```
cd /tmp
wget https://github.com/Fa-r27-aD/Passwall-on-Archer-C6-v3.20/blob/main/Passwall2/luci-app-passwall2_1.15-1_all.ipk
opkg install luci-app-passwall2_1.15-1_all.ipk
rm luci-app-passwall2_1.15-1_all.ipk
```
2. Install Manually

Download the file "luci-app-passwall2_1.15-1_all.ipk" from the Passwall2 folder and install it in the Software section of the LuCI user interface.

D. Final setup of Passwall:

Now go to Services -> Passwall 2 in Passwall 2 menu go to AppUpdate tab and change Xray App Path to : /tmp/usr/bin/xray

Note that xray-core will be automatically installed in Temp Space when the router reboots.



