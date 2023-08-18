#!/bin/sh
# Description: a tool for screenshot then edit it.
# Dependencies: tofi, grim, slurp, swappy
# Icon is from https://uxwing.com/capture-icon.
if (pgrep tofi > /dev/null); then
  killall -q tofi
else
  case $(printf "%s\n" "Cancel" "Full-screenshot" "Select a region for screenshot" | tofi -c ~/.config/tofi/soy-milk2) in
    "Cancel")
      dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/camera.png -t 3500 "Screenshot Aborted."
      ;;
    "Full-screenshot")
      grim - | swappy -f -
      dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/camera.png -t 3500 "Saved to ~/Pic./Editedshots/."
      ;;
    "Select a region for screenshot")
      grim -g "$(slurp -d)" - | swappy -f -
      dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/camera.png -t 3500 "Saved to ~/Pic./Editedshots/."
      ;;
  esac
fi
