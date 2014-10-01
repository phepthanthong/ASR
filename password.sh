#!/bin/bash
#tao ra user va password test1...test10
for a in {1..10}
do 
	password=$RANDOM
	echo $password
	useradd test$a
	echo $password | passwd --stdin test$a 
done
