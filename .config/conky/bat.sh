#!/bin/sh

    STATUS=$(cat /sys/class/power_supply/BAT0/status)
        if [ "$STATUS" = "Discharging" ]; then
	    acpi | grep 'Battery 0' | awk '{print "BAT-time : " $5,$6"."}' | xargs -n 2
        elif [ "$STATUS" = "Charging" ]; then
	    acpi | grep 'Battery 0' | awk '{print "BAT-time : " $5,$6,$7"."}' | xargs -n 3
        elif [ "$STATUS" = "Full" ]; then
	    acpi | grep 'Battery 0'| sed '1 s/,//g' | awk '{print "Now BAT is "$3"."}'
        fi
