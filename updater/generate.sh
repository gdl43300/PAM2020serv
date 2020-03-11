#!/bin/bash

FILE=generate.json

echo '[' > $FILE

for i in `seq $1 -1 $(($2 + 2))`;
do
	curl https://xkcd.com/$i/info.0.json >> $FILE
	echo ', ' >> $FILE
done

curl https://xkcd.com/$(($2 + 1))/info.0.json >> $FILE

echo ']' >> $FILE
