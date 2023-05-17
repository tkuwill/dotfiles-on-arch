#!/bin/sh

# cat /sys/class/power_supply/BAT0/status
# Change BAT1 to whatever your battery is identified as. Typically BAT0 or BAT1
    CHARGE=$(cat /sys/class/power_supply/BAT0/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT0/status)

        if [ "$STATUS" = "Charging" ]; then
            printf "ﴞ %s%%%s" "$CHARGE" 
        else
            printf " %s%%%s" "$CHARGE" 
        fi

