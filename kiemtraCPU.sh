#!/bin/bash
# viet chuong trinh kiem tra CPU
MAX=50
total=0
df -h | grep ^/dev/sda | awk '{print $5}' | awk -F"%" '{print $1}' | while read output
do
    let total=$total+$output
    echo $total
    if [ $total -gt $MAX ]
    then
	echo "your hard disk is going out soon" | mail -s"overload" root@localhost
	break
    fi
done
