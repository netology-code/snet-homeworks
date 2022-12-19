#!/bin/bash
botname=Linux
echo "What is your name"
read name
server=`cat /etc/hostname`
echo "Hello $name, my name is $botname"
echo "Welcome to the $server"
