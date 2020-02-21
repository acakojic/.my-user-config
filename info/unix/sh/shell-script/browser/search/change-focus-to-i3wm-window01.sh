#!/bin/sh

login="https://www.linkedin.com/login?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin"
username="a.kojic@yahoo.com"


xdotool key Super_L+1 &&
	sleep 1.0 &&

#	echo xdotool getactivewindow"

	windowid=$(xdotool getactivewindow)


echo $windowid

	sleep 0.3 &&
	
		xdotool windowactivate --sync $windowid key Ctrl+t &&

		sleep 1.0 &&

		#xdotool windowactivate --sync $windowid type "$@" &&

		#xdotool windowactivate --sync $windowid type "$sum" &&
#string=$(source sum_strings.sh a b c d e) &&		

		xdotool windowactivate --sync $windowid type $login &&		

		sleep 5.0 &&

		xdotool windowactivate --sync $windowid key Return &&

		sleep 5.0 &&

		xdotool windowactivate --sync $windowid type $username &&

		sleep 3.0 &&
		
		xdotool windowactivate --sync $windowid key Tab &&

		sleep 3.0 &&
		
		xdotool windowactivate --sync $windowid type "******" &&

		sleep 3.0 &&
	
		xdotool windowactivate --sync $windowid key Return
		
#sleep 3.0 &&
#		xdotool windowactivate --sync $windowid key Return
#	echo "hello " > get_window_id.txt
#	source check_focus.sh > get_window_id.txt
#	. ~/.my-user-config/info/unix/sh/shell-script/browser/search/chech_focus.sh > ~/.my-user-config/info/unix/sh/shell-script/browser/search/get_window_id.txt
