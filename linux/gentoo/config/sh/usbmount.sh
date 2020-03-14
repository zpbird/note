#!/bin/bash

LOG=/var/log/usb-hotplug.log

lap=$(date --rfc-3339=ns)

echo "$lap: $DEVPATH requesting $ACTION" >> $LOG


if [ "$ACTION" == "add" ]
then
	mount -t vfat -o iocharset=utf8,umask=000 /dev/sdc4 /mnt/usb
	echo "USB has been mounted" >> $LOG 
elif [ "$ACTION" == "remove" ]
then
    umount -l /mnt/usb
	echo "USB has been umounted" >> $LOG
fi
