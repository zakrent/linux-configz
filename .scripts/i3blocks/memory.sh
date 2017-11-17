#/bin/bash
eval $(cat /proc/meminfo | awk '/MemAvailable:/ {print "memory="$2 }')
memory="${memory:0:1}.${memory:1:2} GB"
echo $memory
