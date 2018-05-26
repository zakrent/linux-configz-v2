#/bin/bash
eval $(cat /proc/meminfo | awk '/SwapFree:/ {print "swap="$2 }')
swap=$(echo "scale=1;$swap/1048576"| bc)
echo $swap"G"
