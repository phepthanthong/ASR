#!/bin/bash
ping6 -c5 ::1 &> /dev/null
if [ $? -eq 0 ] 
then 
	echo "ton tai ping6"
fi


