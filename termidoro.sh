#!/bin/bash
function countdown(){
	date1=$((`date +%s` + $1));
	while [ "$date1" -ge `date +%s` ]; do
		echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%M:%S)\r";
		sleep 0.1
	done
}

WORK_SETS_DONE=0
zenity --warning --text="Start working." 2>/dev/null

while true;
do
	printf "\r\rWork sets done: %d\n" "$WORK_SETS_DONE"
	countdown 1500;
	((WORK_SETS_DONE++));
	beep 2>/dev/null
	zenity --warning --text="take a break" 2>/dev/null;

	countdown 300;
	beep 2>/dev/null
	zenity --warning --text="back to work son" 2>/dev/null;
done
