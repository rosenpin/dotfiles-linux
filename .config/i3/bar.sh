while : 
#IFS=$(echo -en "\t\n\0")

do
	echo $(xkblayout-state print %s) " " $(acpi -b | cut -d  "," -f 2) " " $(date "+%H:%M")
	sleep 5 
done
