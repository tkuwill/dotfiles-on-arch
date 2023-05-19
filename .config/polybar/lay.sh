#!/bin/sh

STATUS=$(bspc query -T -d | jq -r .layout)

if [ "$STATUS" = "tiled" ]; then
    printf "[]="
else
    printf "[M]"
fi
