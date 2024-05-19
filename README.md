
# How To :

Install Passwall2 & Install Xray-core on Router (TP-Link Archer C6 V3.20) Temp Space

Requirement : 50MB free Temp Space & 8MB free Disk Space | OpenWRT 23.05.3

This script automatically installs Passwall2 and all its prerequisites and then installs core in Temp Space.

A. Install Service:

Enter the following command in SSH:
```
wget https://raw.githubusercontent.com/Fa-r27-aD/Passwall-on-Archer-C6-v3.20/main/install.sh && chmod 777 install.sh && sh install.sh
```

B. Final setup of Passwall:

Now go to Services -> Passwall 2 in Passwall 2 menu go to AppUpdate tab and change Xray App Path to : /tmp/usr/bin/xray

Note that xray-core will be automatically installed in Temp Space when the router reboots.



