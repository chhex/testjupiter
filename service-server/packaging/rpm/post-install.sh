#!/bin/bash
# post-install.sh
#
echo "Post Install script: $1"
echo "Setting permissions on /var/opt/service-servcer"
chown -R service-servcer:service-servcer /var/opt/service-servcer
echo "Setting permissions on /etc/opt/service-servcer"
chown -R service-servcer:service-servcer /etc/opt/service-servcer
if [ "$1" = "1" ]; then
	echo "Registering service-servcer for Boot time start"
	systemctl enable service-servcer
	## On initial  install of Rpm the server is  not startet, puppet plan will do this
	## echo "Starting service-servcer"
	## systemctl start service-servcer
fi
if [ "$1" = "2" ]; then
	echo "Starting service-servcer"
	systemctl start service-servcer
fi

exit 0