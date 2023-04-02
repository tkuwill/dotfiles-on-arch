#!/bin/sh

function calendar {
    options="Cancel\nthis-month\nthis-year\nnext-twelve-months"
    selected=$(echo -e $options | dmenu -i -p "Calendar")
    if [[ $selected = "this-month" ]]; then 
        # urxvt -T 'Calendar of this month' -e zsh -c 'cal; zsh'
	st -t 'Calendar of this month' -e zsh -c 'dialog --calendar 'Calendar'  3 40 $(date "+%d %m %Y") && clear; zsh'
    elif [[ $selected = "this-year" ]]; then 
        urxvt -T 'Calendar of this year' -e zsh -c 'cal -y; zsh'
    elif [[ $selected = "next-twelve-months" ]]; then 
        urxvt -T 'Calendar of next 12 months' -e zsh -c 'cal -Y; zsh'
    elif [[ $selected = "Cancel" ]]; then 
        return
    fi
}

calendar
