while : 
#IFS=$(echo -en "\t\n\0")

do
	echo $(xkblayout-state print %s) " "  $(date "+%H:%M:%S %d/%m")
	sleep 0.1 
done
