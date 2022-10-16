#! /usr/bin/bash
# blog-cyberworm.com

codeArea=`find / -name arpDetection` # Find the code's directory.

arpTable=`arp -n`
gatewayMAC=`echo $arpTable | awk '{print $9}'` # Get modem's MAC address.

echo -e > $codeArea/cw.txt "ARP TABLE\n$arpTable" # Transfer result of the 'arp -n' to the cw.txt.

indexOfMac=0

# We looking for: Is modem's MAC twice?
for sameMAC in $(cat ${codeArea}/cw.txt); do
	case $sameMAC in
		"$gatewayMAC" )
			(( indexOfMac++ ))
			
			if [ $indexOfMac -eq 2 ]
			then
				notify-send "WARNING" \
				"[***] You are under the 'Man in the Middle' attack" \
				-t 20000
				
				notify-send "WARNING" \
				"[***] If you run 'arp -n', you'll see the attacker.\nYour Modem's MAC address and the Attacker's MAC address are same." \
				-t 20000
			fi ;;
	esac
done
