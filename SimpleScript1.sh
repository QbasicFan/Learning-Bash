#!/bin/bash

# Program: Bash , Display basic network connections informations
# GitHub : https://github.com/QbasicFan
# Author : Sadman Phil


function sep(){
echo ------------------------------
}

#Do we clear the screen first or not ?

if [ "$1" == "-c" ]
then
clear
else
echo MyIpCpHst [OTPION]
echo -c   clear before display
fi



sep 
echo  Locale \& Wireless lan0 
ifconfig | grep 'inet addr'
sep
netstat -rn | awk ' { print $2 } ' 
sep
grep --color nameserver /etc/resolv.conf
