#!/bin/bash
# pre-uninstall.sh
#
# Stopping Service for Uninstall 
echo "Pre Uninstall script: $1"
if [ "$1" = "0" ]; then
	echo "Stopping service-servcer"
	systemctl stop service-servcer
fi
exit 0