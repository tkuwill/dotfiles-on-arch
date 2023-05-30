#!/bin/sh
# Description: show all notification histories stored by dunst. Only can show <= 20 notifications. Dunst can only store 20 histories by default.
# chat icon is from https://uxwing.com/speaking-bubbles-line-icon.

dunstify -a "center" -i /home/will/Pictures/sysicon/chat.png -t 8000 "Notification histories: $(dunstctl count history)" && sleep 2s &&	for i in {1..20}; do dunstctl history-pop; done
