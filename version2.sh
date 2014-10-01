#!/bin/bash
function myster (){
    for MOT in $*
    do
	nb=`echo $MOT | wc -c`
	let nc=$nb-1
	echo -n $nc " "
    done
}
while read line 
do
    myster $line
    echo
done < liste.txt
