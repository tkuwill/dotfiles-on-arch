#!/bin/sh
    MODE=$(xset -q | grep 'DPMS is' | awk '{print $3}')
    if [ "$MODE" = "Disabled" ]; then
        printf ":零"
    elif [ "$MODE" = "Enabled" ]; then
        printf ":鈴"
    fi

