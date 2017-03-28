#!/bin/bash
WORK_SETS_DONE=0
REST_SETS_DONE=0
zenity --warning --text="Start working." 2>/dev/null
printf "Work sets done: %d\n" "$WORK_SETS_DONE"

while true; do
	sleep 1500 &&
	WORK_SETS_DONE++ &&
	zenity --warning --text="take a break" 2>/dev/null &&
	printf "Work sets done: %d\n" "$WORK_SETS_DONE"

	CURRENT_REST_SET++ &&
	sleep 300 &&
	zenity --warning --text="back to work son" 2>/dev/null;
done
