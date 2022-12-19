#!/bin/bash
net_count=$(ls -A /sys/class/net/ | wc -l)
if [[ $net_count -eq 1 ]]; then
    echo "I find 1 interface"
elif [[ $net_count -gt 1 ]]; then
    echo "I find multiple ($net_count) interfaces"
else
    echo "I didn't find net interfaces"
fi;

