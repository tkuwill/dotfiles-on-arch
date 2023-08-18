#!/bin/sh
# Description: show workspaces in use ny dunst.
# Icon is from <a href="https://www.flaticon.com/free-icons/desk" title="desk icons">Desk icons created by Freepik - Flaticon</a>.
curwork() {
  hyprctl workspaces | grep 'workspace' | awk '{print $3}' | sort -n | xargs
}

curwork

dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/desk.png -t 8000 "Space $(curwork) in use."
