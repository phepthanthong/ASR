#!/bin/bash
# viet chuong trinh tinh tong tu 0 den n (n do nguoi dung nhap)
if [ $# -eq 0 ]
then
    echo "il faut un parametre"
    exit 255
fi

    i=1
    while [ $i -le $1 ]
    do
	echo $i
	let i=$i+1
    done

