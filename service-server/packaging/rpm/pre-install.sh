#!/bin/bash
# pre-install.sh
#
# Stopping Service for update 
echo "Pre Install script: $1"
if [ "$1" = "2" ]; then
	echo "Stopping service-servcer"
	systemctl stop service-servcer
fi
if [ "$1" = "1" ]; then
  if id "service-servcer" &>/dev/null; then
    echo 'service-servcer already exists '
  else
	  echo "Creating group: service-servcer"
	  /usr/sbin/groupadd -f -r service-servcer 2> /dev/null || :
	  echo "Creating user: service-servcer"
	  /usr/sbin/useradd -r -m -c "service-servcer user" service-servcer -g service-servcer 2> /dev/null || :
	  echo "service-servcer:service-servcer" | sudo chpasswd
	  echo "Password has been set for service-servcer user, you might want to change it."
	fi
fi

sudoFile="/etc/sudoers.d/service-servcer"
if [ -e "$sudoFile" ]; then
  echo "$sudoFile already exists. It will be deleted and newly created."
  rm $sudoFile
fi
echo "Creating $sudoFile"
echo "Defaults:service-servcer !requiretty" >> $sudoFile
echo "service-servcer ALL= (root) NOPASSWD: /bin/rm -Rf /tmp/apg_patch_ui_temp*" >> $sudoFile

exit 0