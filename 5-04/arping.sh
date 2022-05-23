#!/bin/bash
PREFIX=$1
INTERFACE=$2

trap 'echo "Ping exit (Ctrl-C)"; exit 1' 2

for SUBNET in {0..255}
do
	for HOST in {1..255}
	do
		echo "[*] IP : "$PREFIX"."$SUBNET"."$HOST
		arping -c 3 -i $INTERFACE $PREFIX"."$SUBNET"."$HOST 2> /dev/null
	done
done
