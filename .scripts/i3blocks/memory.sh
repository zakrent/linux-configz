#/bin/bash
eval $(cat /proc/meminfo | awk '/MemAvailable:/ {print "memory="$2 }')
memory=$(echo "scale=2; $memory/1000000" | bc)
echo $memory GB
