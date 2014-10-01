#!/bin/bash
cat /etc/passwd > temp
n=1
while read line
do
    let n=$n+1
    let m=$n%2
    if [ $m -eq 0 ]
    then
	let uid=`echo $line | awk -F":" '{print $3}'`
	let gid=`echo $line | awk -F":" '{print $4}'`
	if [ $uid -eq $gid ]
	then
	    echo $n $line
	fi
    fi
done < temp	    