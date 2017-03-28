#!/bin/bash
zenity --warning --text="Start working." 2>/dev/null

while true; do
	sleep 1500 && zenity --warning --text="take a break" 2>/dev/null;
	sleep 300 && zenity --warning --text="back to work son" 2>/dev/null;
done
