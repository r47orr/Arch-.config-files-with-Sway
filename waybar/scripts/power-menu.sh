#!/bin/bash

entries="Sair Suspender Reiniciar Desligar"

selected=$(printf '%s\n' $entries | wofi --conf=$HOME/.config/wofi/config.power --style=$HOME/.config/wofi/style.widgets.css | awk '{print tolower($1)}')

case $selected in
  sair)
    swaymsg exit;;
  suspender)
    exec systemctl suspend;;
  reiniciar)
    exec systemctl reboot;;
  desligar)
    exec systemctl poweroff -i;;
esac
