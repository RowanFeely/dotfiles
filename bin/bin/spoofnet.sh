#!/bin/bash
#                                      ████                    ██  
#          ██████                     ░██░                    ░██  
#   ██████░██░░░██  ██████   ██████  ██████ ███████   █████  ██████
#  ██░░░░ ░██  ░██ ██░░░░██ ██░░░░██░░░██░ ░░██░░░██ ██░░░██░░░██░ 
# ░░█████ ░██████ ░██   ░██░██   ░██  ░██   ░██  ░██░███████  ░██  
#  ░░░░░██░██░░░  ░██   ░██░██   ░██  ░██   ░██  ░██░██░░░░   ░██  
#  ██████ ░██     ░░██████ ░░██████   ░██   ███  ░██░░██████  ░░██ 
# ░░░░░░  ░░       ░░░░░░   ░░░░░░    ░░   ░░░   ░░  ░░░░░░    ░░  
#
#  ▓▓▓▓▓▓▓▓▓▓
# ░▓ author ▓ ROGUE(X3) <rowanfeely.github.io>
# ░▓   code ▓ https://github.com/RowanFeely/dotfiles
# ░▓▓▓▓▓▓▓▓▓▓
# ░░░░░░░░░░
#
read -p "disconnect wifi then hit any key "
hardwareaddr="28:CF:E9:12:8F:97"
echo "your hardware address is $hardwareaddr"
oldaddr=`ifconfig en0 | grep ether | sed 's/[^ ]* //'`
sleep 1
echo "your current address is $oldaddr"
sleep 1
echo "generating new mac address..."
sleep 2
newaddr=`openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'`
echo "your new address is $newaddr"
sleep 1
echo "spoofing new hardware address..."
sleep 2
sudo ifconfig en0 ether $newaddr
read -p "reconnect wifi then hit any key"
if [[ $oldaddr == $newaddr ]] | [[ $hardwareaddr == $newaddr ]] ; then
	echo "your address did not change from hardware or prior spoof address"
	echo "spoofing failed"
else
	echo "spoofing new address successfully"
fi



