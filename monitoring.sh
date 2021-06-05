#!/bin/sh
	echo -n "	#Architecture: " && uname -a
	echo -n "	#CPU physique: " && grep "cpu cores" /proc/cpuinfo |sort -u |cut -c13-
	echo -n "	#CPU virtuel: " && grep "siblings" /proc/cpuinfo |sort -u |cut -c12-
	echo -n "	#Memoire vive: " && free -m | grep Swap | awk '{print $3, "/",$2,"MB", "   ","(", $3/$2 * 100.0, "%",")"}'
	echo -n "	#Memoire: " && free -m | grep Mem | awk '{print $3, "/",$2,"Gb", "   ","(", $3/$2 * 100.0, "%",")"}'
	echo -n "	#CPU use: " && grep 'cpu ' /proc/stat | awk '{print ($2 + $4) * 100 / ($2 + $4 + $5)}'
	echo -n "	#Dernier redémarrage: " && who -b | cut -c30-
	echo -n "	#LVM ?: " && if lsblk | grep lvm > /dev/null; then 
		echo "yes"
	else
		echo "no"
	fi
	echo -n "	#Connexion: " && cat /proc/net/tcp | wc -l
	echo -n "	#Nombre d'utilisateurs: " && who -q | grep nombre |awk '{print $3}'
	echo -n "	#Network: " && echo -n "IP: " && hostname -I && echo -n "M.A.C: " && cat /sys/class/enp0s3/adress  
	echo -n "	#Sudo: Nombre de commandes utilisé = " &&  cat  /var/log/sudo/sudo.log | grep COMMAND | wc -l
