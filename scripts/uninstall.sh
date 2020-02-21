#!/bin/bash

#Script for uninstalling maldetect and Clamav

#Remove Maldetect
cd /
echo "y" | /maldet*/files/uninstall.sh

#Remove Claav
yum -y remove clamav