#!/bin/sh
# Description: a script which can show current workspace by dunst.
# Icon is from <a href="https://www.flaticon.com/free-icons/desk" title="desk icons">Desk icons created by Freepik - Flaticon</a>
work() {
  hyprctl activeworkspace -j | jq -r .name
}

work

dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/desk.png -t 8000 "Now you are in space $(work)."
