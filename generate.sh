#!/bin/bash

echo '[' > public/newxkcd.json

for i in `seq 2266 -1  1`;
do
	curl https://xkcd.com/$i/info.0.json >> public/newxkcd.json
	echo ', ' >> public/newxkcd.json
done

echo ']' >> public/newxkcd.json
