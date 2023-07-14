#!/bin/sh
# Description: a menu run by tofi which can show calendar in foot.

if (ps -a | grep tofi >/dev/null); then
  killall -q tofi
else
  case $(printf "%s\n" "Cancel" "this-year" "next-twelve-months" | tofi -c ~/.config/tofi/soy-milkTV) in
  "Cancel")
    exit 0
    ;;
  "this-year")
        foot -T 'Calendar of this year' -e zsh -c 'cal -y; zsh'
    ;;
  "next-twelve-months")
        foot -T 'Calendar of next 12 months' -e zsh -c 'cal -Y; zsh'
    ;;
  esac
fi