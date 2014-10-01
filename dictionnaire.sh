#!/bin/bash
# viet chuong trinh tu dien
echo "VEUILLEZ ENTRER UN MOT"
read mot
n=1
while read line
do
    let n=$n+1
    let m=$n%2
    if [ "$mot" -eq "$line" ] && [ $m -eq 0 ]
    then
	tail -n+1 text-dictionnaire 
    elif [ "$mot" -eq "$line" ] && [ $m -eq 1 ]
	then
	head -n-1 text-dictionnaire
    fi
done < text-dictionnaire

	
