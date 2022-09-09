#!/bin/bash

MATRIX="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
LENGTH="10"

while [ "${n:=1}" -le "$LENGTH" ]
do
	PASS="$PASS${MATRIX:$((RANDOM%${#MATRIX})):1}"
	(( n+=1 ))
done

echo "$PASS"
exit 0

