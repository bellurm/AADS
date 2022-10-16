#! /bin/bash
# blog-cyberworm.com

findMainScript=`find / -name arpDetection.sh`
cd /var/spool/cron/crontabs/
echo >> root "*/1 * * * * $findMainScript"
service cron restart

: '
*****************************************README*****************************************

If you  want to use Cron, you should run this script.
This script to be add the informations and arpDetection.sh file to the Crontab.
It will be seem like this: * * * * * /root/Desktop/arpDetection/arpDetection.sh

WARNING: Cron is can not running the ninth line of the arpDetection.sh
Because of this situation, script is can not work truely.

' :