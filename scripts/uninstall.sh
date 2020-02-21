#!/bin/bash

#Script for uninstalling maldetect and Clamav

#Remove Maldetect

#
##
# Copyright (C) ServerHealers.Com | Web Hosting Support Specialists
# This script is free to use and distribute. We hope this will be useful.
# If you face any issues or if you need any further help,
# Feel free to reach us at ServerHealers.Com
#######################
## Malware Detect Uninstall Script ###
#######################
RED='33[01;31m'
RESET='33[0m'
GREEN='33[01;32m'
inspath=/usr/local/maldetect
logf=$inspath/event_log
cnftemp=.ca.def
if [ ! -d "$inspath" ];then
echo " "
echo -e $RED"Maldet is not installed in this system! Exiting"$RESET
echo
echo "If you want to install, you can follow our tutorial"
echo "http://serverhealers.com/blog/how-to-uninstall-or-remove-maldet-bash-script/"
echo
sleep 2
exit 1
else
rm -rf $inspath
rm -rf $cnftemp
rm -rf /usr/lib/libinotifytools.so.0
rm -rf /etc/cron.daily/maldet
rm -rf /etc/cron.d/maldet_pub
rm -rf $inspath.bk*
rm -rf $inspath.last*
fi
echo
echo
echo -e "$GREEN***********************************************************************************************$RESET"
echo -e " Success!"
echo -e "$GREEN***********************************************************************************************$RESET"
echo
echo
echo "If you want to install again, you can follow our tutorial"
echo "http://serverhealers.com/blog/how-to-uninstall-or-remove-maldet-bash-script/"
echo

#Remove Claav
yum -y remove clamav