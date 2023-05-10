#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m' # No Color
 Check if user is root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   sleep .5 
   sudo "$0" "$@"
   exit 1
fi


echo "Running as root..."
sleep .5
clear


cd /root/

wget https://raw.githubusercontent.com/Fa-r27-aD/Passwall-on-Archer-C6-v3.20/main/installcore.sh

chmod 777 installcore.sh

cd /etc/init.d/

wget https://raw.githubusercontent.com/Fa-r27-aD/Passwall-on-Archer-C6-v3.20/main/runservice

chmod +x /etc/init.d/runservice

/etc/init.d/runservice enable

echo -e "${GREEN}Starting Service ... ${ENDCOLOR}"

/etc/init.d/runservice start

echo -e "${GREEN} Done! ${ENDCOLOR}"
