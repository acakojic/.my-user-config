#!/bin/sh

sum=""

for arg in $@; do

	sum+=" $arg"
	
done;

echo $sum
