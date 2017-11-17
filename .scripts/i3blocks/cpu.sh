#/bin/bash

usage=$[100-$(vmstat 1 2|tail -1|awk '{print $15}')]
printf "%2d %%" $usage
