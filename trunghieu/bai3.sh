#!/bin/bash 
themthongtin () {
    echo "Nhap thong tin SV duoi dang MaSV,TenSV,NTNS,Khoa,Lop"
    read thongtin
    echo $thongtin > temporaire
    tr " " "," < temporaire >> sv.txt
}
indanhsach () {
    echo "nhap MaSV"
    read ma
    if [ $# -gt 3 ]
    then
	echo "qua so luong cho phep, xin nhap lai"
	exit 255
    fi
    while read line
    do 
	masv=`grep ^$1 sv.txt`
	in=`echo $line | awk -F"," '{print $1 $2 $4}' sv.txt`
	if [ $ma -eq $masv ]
	then
	    echo $in
	else 
	    echo "khong hop le, xin nhap lai"
	fi
    done
}	
themthongtin
indanhsach	 

	
