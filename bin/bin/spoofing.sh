#!/bin/bash
#                                      ████ ██                 
#          ██████                     ░██░ ░░            █████ 
#   ██████░██░░░██  ██████   ██████  ██████ ██ ███████  ██░░░██
#  ██░░░░ ░██  ░██ ██░░░░██ ██░░░░██░░░██░ ░██░░██░░░██░██  ░██
# ░░█████ ░██████ ░██   ░██░██   ░██  ░██  ░██ ░██  ░██░░██████
#  ░░░░░██░██░░░  ░██   ░██░██   ░██  ░██  ░██ ░██  ░██ ░░░░░██
#  ██████ ░██     ░░██████ ░░██████   ░██  ░██ ███  ░██  █████ 
# ░░░░░░  ░░       ░░░░░░   ░░░░░░    ░░   ░░ ░░░   ░░  ░░░░░  
#
#  ▓▓▓▓▓▓▓▓▓▓
# ░▓ author ▓ ROGUE(X3) <rowanfeely.github.io>
# ░▓   code ▓ https://github.com/RowanFeely/dotfiles
# ░▓▓▓▓▓▓▓▓▓▓
# ░░░░░░░░░░
#
addr=`ifconfig en0 | grep ether | sed 's/[^ ]* //'`
oldaddr="28:cf:e9:12:8f:97"
echo "current: $oldaddr"
if [ $addr == $oldaddr ] ; then
	echo "wifi spoofing disabled"
else
	echo "wifi spoofed"
fi
