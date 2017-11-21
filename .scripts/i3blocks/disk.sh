#bin/bash

space=$(df / | tail -1 | awk '{print $4}')
echo $(echo "scale=2; $space/1000000" | bc) GB
