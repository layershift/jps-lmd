#!/bin/bash

#Script for uninstalling maldetect and Clamav

#Remove Maldetect

cd /maldet*/files/
sh uninstall.sh
#Remove Claav
yum -y remove clamav