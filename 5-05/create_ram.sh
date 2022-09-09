#!/bin/bash
ROOTUSER_NAME=root
MOUNTPT=/mnt/ramdisk
SIZE=2000
BLOCKSIZE=1024
DEVICE=/dev/ram0

username=`id -nu`
if [ "$username" != "$ROOTUSER_NAME" ]
then
	echo "Must be root to run \"`basename $0`\"."
	exit 1
fi

if [ ! -d "$MOUNTPT" ]
then
	mkdir $MOUNTPT
fi

dd if=/dev/zero of=$DEVICE count=$SIZE bs=$BLOCKSIZE

mke2fs $DEVICE
mount $DEVICE $MOUNTPT
chmod 777 $MOUNTPT

echo "\"$MOUNTPT\" is ready."
exit 0
