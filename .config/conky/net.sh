#!/bin/sh

    STATUS=$(nmcli device | sed '2 q' | sed '1 d' | awk '{print $3}')
        if [ "$STATUS" = "connected" ]; then
	    iwconfig wlan0 | sed '1 q' | awk '{print $4}' | sed -e 's/ESSID:"// ' | sed -e 's/"//' && iwconfig wlan0 | sed -n "6p" | awk '{ print $2 " Connected"}'

        elif [ "$STATUS" = "disconnected" ]; then
            nmcli device | sed '2 q' | sed '1 d' | awk '{print $2,$3}'
        fi
