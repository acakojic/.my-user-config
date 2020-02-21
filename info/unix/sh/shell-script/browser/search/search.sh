#!/bin/sh

#$ A="X Y"
#$ A+=" Z"
#$ echo "$A"
#X Y Z

#echo "${@: -1}"#poslednji index


words=""

for arg in $@; do
	
	if [ $arg = $1 ]; then

		if [ $1 = '?' ]; then

			words+='stackoverflow+'

		else

			words+=''$arg
			
		fi
		
	else

		words+='+'$arg
	fi
	
	#words+='+'$arg
	#echo $arg

done

#echo $words

link="https://duckduckgo.com/?q=$words&kp=-1&kl=us-en&ia=web"

xdg-open $link
