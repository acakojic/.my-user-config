#!/bin/sh

#echo Hello, $@ #svi argumenti

#echo Hello, $# #ukupan broj argumenata

#echo Hello, $$ #id procesa 

for arg in $@; do
	case $arg in
		aca)
			echo aca-case
			;;
		misa)
			echo misa-case
			;;
		*)
			echo default-case
			
	esac
done


