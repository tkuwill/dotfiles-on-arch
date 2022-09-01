#!/bin/sh
# A script for starting browsers.



function browser {
    options="Cancel\nChromium\nEdge"
    selected=$(echo -e $options | dmenu -i -p "Which browser do you want to use ?")
    if [[ $selected = "Chromium" ]]; then 
        chromium --force-device-scale-factor=1.3    
    elif [[ $selected = "Edge" ]]; then 
        microsoft-edge-stable --force-device-scale-factor=0.9
    elif [[ $selected = "Cancel" ]]; then 
        return
    fi
}

browser
