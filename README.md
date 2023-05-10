#Passwall-on-Archer-C6-v3.20
target/ramips/mt7621
(https://downloads.openwrt.org/releases/22.03.5/targets/ramips/mt7621/)

# How To :

Install Xray-core on TP-Link Archer C6 V3.20 Temp Space :

Requirement : 50MB free Temp Space & 5MB free Disk Space

First you need to install Passwall or Passwall 2 (Passwall 2 is recommended). I recommend entering the commands in SSH, Just make sure that the installation of Passwall has prerequisites, which I put below the installation link for you. If you want to do this manually without SSH, you have to manually download the prerequisites and install them in LuCI in the Software section.

Go ahead like this on SSH:
1. Install "shadowsocksr-libev-ssr-local"
2. Install "shadowsocksr-libev-ssr-redir"
3. Install "simple-obfs"
4. Install "tcping"
```
opkg update
opkg install shadowsocksr-libev-ssr-local
opkg install shadowsocksr-libev-ssr-redir
opkg install simple-obfs
opkg install tcping
```

# Install Service :

1- Connect to your router via SSH. You can use PuTTy software and enter the following command in it:
```
wget https://raw.githubusercontent.com/amirhosseinchoghaei/mi4agigabit/main/amirhossein.sh && chmod 777 amirhossein.sh && sh amirhossein.sh
```


2- Go to Passwall > AppUpdate Change Xray App Path to : /tmp/usr/bin/xray 

![This is an image](https://pars-space.ir/wp-content/uploads/2023/03/Sp.jpg)

Done !

![This is an image](https://pars-space.ir/wp-content/uploads/2023/03/Passwall.jpg)

>>> when your router rebooted , it's takes about 3 min to start passwall with xray-core ...




