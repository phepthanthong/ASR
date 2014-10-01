#!/bin/bash
tong () {
	let x=$1+$2
	echo $x
}
echo "nhap a"
read a
echo "nhap b"
read b
tong $a $b
