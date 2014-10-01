#!/bin/bash
# viet chuong trinh sapxep thu tu 1 day so
nhapTableau () {
    echo "nhap phan tu cua mang"
    for ((i=0;i<5;i++))
    do
	read a[$i]
    done
}
inTableau () {
    for ((i=0;i<5;i++))
    do
	echo a[$i]=${a[$i]}
    done
}
sapxep () {
    for ((i=0;i<4;i++))
    do
	for ((j=i+1;j<5;j++))
	do
	    if [ ${a[$i]} -gt ${a[$j]} ]
	    then
		x=${a[$i]}
		a[$i]=${a[$j]}
		a[$j]=$x
	    fi
	done
    done
}
nhapTableau
echo "truoc khi sap xep"
inTableau
sapxep
echo "sau khi sap xep"
inTableau
