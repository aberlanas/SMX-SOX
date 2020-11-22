#!/bin/bash

mkdir news/

for f in $(ls -1 *.png); do 

	convert $f -bordercolor white -border 2 \( +clone -background black -shadow 80x3+2+2 \) +swap -background white -layers merge +repage $f.output.png
	mv $f.output.png news/$f
done
