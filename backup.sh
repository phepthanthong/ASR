#!/bin/bash
echo "nhap file/thu muc can backup"
read source
echo "nhap thu muc luu"
read destination
if  ! [ -d $destination ] 
then 
	mkdir $destination	
fi 
if [ -f $source ]
then
	cp -p $source $destination
	echo "da copy file"
elif [ -d $source ]
then
	cp -pr $source $destination
	echo "da copy thu muc"
else 
	echo "chi copy file va thu muc"
	exit 255
fi
	
