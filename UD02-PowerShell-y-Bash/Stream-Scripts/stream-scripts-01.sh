#!/bin/bash

# This script is licensed under GPLv3 or higher.
# Author: Angel Berlanas
# 

# Script description
# This script must redirect the output of a several 
# info commands in order to generate a simple report.


# Obtains the Name of the machine

MACHINENAME=$(hostname)

echo " **** HOSTNAME **** " > /tmp/report-for-${MACHINENAME}.report
echo ${MACHINENAME} >> /tmp/report-for-${MACHINENAME}.report

# Obtains the LinuX Version Installed
echo " **** LinuX Version *** ">> /tmp/report-for-${MACHINENAME}.report
lsb_release -a >> /tmp/report-for-${MACHINENAME}.report

# Obtains the date in a YYYYMMDD format
echo " **** DATE *** ">> /tmp/report-for-${MACHINENAME}.report
date >> /tmp/report-for-${MACHINENAME}.report

# Obtains the free space of the disk /dev/sda1
echo " **** FREE SPACE ON /dev/sda1 *** ">> /tmp/report-for-${MACHINENAME}.report
free -m >> /tmp/report-for-${MACHINENAME}.report

# Obtains the IP (not Loopback)
echo " **** NETWORK *** "
ip address | grep lo >> /tmp/report-for-${MACHINENAME}.report

# Obtains the Uptime.
echo " **** UPTIME ****"  >> /tmp/report-for-${MACHINENAME}.report
uptime >> /tmp/report-for-${MACHINENAME}.report


exit 0
