#!/bin/bash
taoGenerateKey () {
    for i in {1..4}
    do
	tr -dc 'a-z0-9A-Z' </dev/urandom | head -c8
	if [ $i -lt 4 ]
	then
	    echo -n "-"
	fi
    done
}
taoGenerateKey
