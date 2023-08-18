#!/bin/sh
# Description: a script which can delete clipboard history.
# Icon is from <a href="https://www.flaticon.com/free-icons/clipboard" title="clipboard icons">Clipboard icons created by Freepik - Flaticon</a>
cliphist wipe && dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/clipboards.png -t 4000 "Clipboard history are all deleted !"
