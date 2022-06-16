#!/bin/bash
# post-uninstall.sh
#
echo "Post Uninstall script: $1"
if [ "$1" = "0" ]; then
	echo "Removing user service-servcer"
	/usr/sbin/userdel -r service-servcer 2> /dev/null || :
	echo "Removing group service-servcer"
	/usr/sbin/groupdel service-servcer 2> /dev/null || :
fi
exit 0