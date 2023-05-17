#!/bin/sh

    STATUS=$(amixer sget Master | tail -n1 | sed -r "s/.*\[(.*)\]/\1/")
    VOL=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")
    printf "%s" "$SEP1"
    	if [ "$STATUS" = "off" ]; then
    		printf "MUTE"
    	else
	        # removed this line because it may get confusing
	        if [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
	            printf "奔 %s%%" "$VOL"
	        elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
	            printf "墳 %s%%" "$VOL"
	        elif [ "$VOL" = "0" ]; then
	            printf "婢 %s%%" "$VOL"
	        else
	            printf " %s%%" "$VOL"
        	fi
        fi
    printf "%s\n" "$SEP2"

