#/bin/bash
eval $(cat /proc/meminfo | awk '/MemAvailable:/ {print "memory="$2 }')
memory=$(echo "scale=1; $memory/1048576" | bc)
echo $memory"G"
