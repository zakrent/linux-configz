#/bin/bash
eval $(cat /proc/meminfo | awk '/SwapFree:/ {print "swap="$2 }')
swap="${swap:0:1}.${swap:1:2} GB"
echo $swap
