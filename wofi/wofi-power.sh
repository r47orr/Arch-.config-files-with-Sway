#!/bin/sh


Desligar_command="systemctl poweroff"
Reiniciar_command="systemctl reboot"
Sair_command="swaymsg exit"
Hibernar_command="systemctl hibernate"
Suspender_command="systemctl suspend"
Voltar_command=""

# you can customise the rofi command all you want ...
rofi_command="rofi -theme $HOME/.config/wofi/launcherSmoll.rasi"
options=$'Voltar\nDesligar\nSair\nReiniciar\nHibernar\nSuspender' 

# ... because the essential options (-dmenu and -p) are added here
eval \$"$(echo "$options" | $rofi_command -dmenu -p "")_command"
