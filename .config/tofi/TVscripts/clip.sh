#!/bin/sh
# Description: a script which can show clipboard by tofi.

cliphist list | tofi -c ~/.config/tofi/dos | cliphist decode | wl-copy
