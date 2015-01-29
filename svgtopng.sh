#!/bin/bash
COUNT=0

for var in "$@"
do
	s=${var##*/}
	base=${s%.svg}
	echo 'converting' $var ' to ' $base.png
	# inkscape -f $var -d=180 -e $base.png
	let COUNT=COUNT+1
	echo 'completed ' $COUNT
	echo '*****'
done
