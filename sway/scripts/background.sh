#!/bin/sh
swaybg -i $(find $HOME/.config/sway/wallpapers/. -type f | shuf -n1) -m fill &
PID=$!
    while true; do
    PID=`pidof swaybg`
    swaybg -i $(find $HOME/.config/sway/wallpapers/. -type f | shuf -n1) -m fill &
    NEXT_PID=$!
    sleep 5
    kill $PID
    OLD_PID=$NEXT_PID
    sleep 1800
done
