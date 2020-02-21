#!/bin/sh

declare -a arrays

arrays[0]=aaa
arrays[1]=bbb
arrays[2]=ccc

echo ${arrays[0]}
echo ${arrays[1]}
echo ${arrays[2]}

echo ------------

for val in ${arrays[*]}; do

	echo $val;
	
done

echo ===========

radna_nedelja=(ponedeljak utorak sreda cetvrtak petak);

for val in ${radna_nedelja[@]}; do

	echo $val;

done;

