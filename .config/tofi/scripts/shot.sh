#!/bin/sh
# Description: a tool for screenshot
# Dependencies: tofi, grim, slurp
# Icon is from https://uxwing.com/capture-icon.
if (ps -a | grep tofi >/dev/null); then
  killall -q tofi
else
  case $(printf "%s\n" "Cancel" "Full-screenshot" "Select a region for screenshot" | tofi -c ~/.config/tofi/soy-milk) in
  "Cancel")
        dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/camera.png -t 3500 "Screenshot Aborted." 
    ;;
  "Full-screenshot")
	grim && mv ~/Pictures/*_grim.png ~/Pictures/screenshots && dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/camera.png -t 3500 "Image saved." 
    ;;
  "Select a region for screenshot")
	grim -g "$(slurp -d)" && mv ~/Pictures/*_grim.png ~/Pictures/screenshots && dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/camera.png -t 3500 "Image saved." 
    ;;
  esac
fi
