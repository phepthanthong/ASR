#!/bin/bash
i=1
for i in {1..10}
do 
	userdel -r test$i
done
