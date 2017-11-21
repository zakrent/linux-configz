#/bin/bash
eval $(cat /proc/meminfo | awk '/SwapFree:/ {print "swap="$2 }')
swap=$(echo "scale=2;$swap/1000000"| bc)
echo $swap GB
