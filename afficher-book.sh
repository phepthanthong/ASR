#!/bin/bash
while read line
do
    SL=`echo $line | awk '{print $3}'`
    DG=`echo $line | awk '{print $4}'`
    let GT=$SL*$DG
    echo $line | awk '{print $1 "\t" $2 "\t$" '$GT'}'
    let total=total+GT
done < bookdetails.txt
echo "total: \$$total" 