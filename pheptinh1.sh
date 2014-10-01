#!/bin/bash
if [ $# -ne 3 ]
then
	echo "nhap dung 3 tham so"
	exit 255
fi
case $2 in
+) 
	echo $(($1 + $3)) ;;
-) 
	echo $(($1 - $3)) ;;
x)
	echo $(($1 * $3)) ;;
/)
	if [ $3 -eq 0 ]
	then echo "erreur: b phai khac 0, xin nhap lai"
	else echo $(($1 / $3))
	fi ;;
esac 
