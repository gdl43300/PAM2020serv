#!/bin/bash


curl https://xkcd.com/info.0.json > dernier.json

dernierNum=$(node getNum.js)
dernierTelecharge=$(node getNumTelecharge.js)

if [ $dernierNum -ne $dernierTelecharge ] ; then
	./generate.sh $dernierNum $dernierTelecharge
	node fusion.js
fi




