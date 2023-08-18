#!/bin/sh
# A script for starting browsers.

if (pgrep tofi > /dev/null); then
  killall -q tofi
else
  case $(printf "%s\n" "Cancel" "Firefox" "Chromium" | tofi -c ~/.config/tofi/soy-milkTV) in
    "Cancel")
      exit 0
      ;;
    "Firefox")
      firefox
      ;;
    "Chromium")
      chromium --gtk-version=4
      ;;
  esac
fi
