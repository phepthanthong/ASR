#!/bin/bash
# viet script thuc hien 4 phep toan +-*/
echo "nhap so thu nhat: "; read a
echo "nhap so thu hai: " ; read b
echo "nhap phep tinh" ; read choix
case $choix in
	+)
	let x=$a+$b
	echo "ket qua = $x" ;;
	-) 
	let x=$a-$b
	echo "ket qua = $x" ;;
	x) 
	let x=$a*$b
	echo "ket qua = $x" ;;
	/)
	if [ $b -eq 0 ]
	then echo "erreur: b phai khac 0, xin nhap lai"
	read b
	let x=$a/$b
	echo "ket qua = $x"
	fi ;;
	*) 
	echo "co loi, xin nhap lai" 
	exit 0 ;;
esac
	
	
	 
