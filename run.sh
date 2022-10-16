#! /usr/bin/bash
# blog-cyberworm.com

codeArea=`find / -name arpDetection`

while true; do
	bash $codeArea/arpDetection.sh # Run the arpDetection.sh
	sleep 10 # For example: If you want, you can change this like 'sleep 3m'. That's mean: Every 3 minutes. 
done

<< com
*****************************************README*****************************************

If the cron.sh file is not worked, you can use this script.
This script to be work in a terminal.
But you shouldn't close the terminal. If you close the terminal, the program will also close.
You can run this script in the a background terminal.

com