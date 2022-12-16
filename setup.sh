#!/bin/bash

ALPUSER="bt"
ALPNAME="Bradley Taunt"

echo "========== Alpine Linux Setup  ================"

echo "====================> Create new user"
adduser -g "$ALPNAME" $ALPUSER

echo "====================> Add user bt to proper groups"
adduser $ALPUSER wheel
adduser $ALPUSER input
adduser $ALPUSER video
adduser $ALPUSER audio

echo "====================> Running setup-xorg-base"
setup-xorg-base

echo "====================> Installing helpful packages"
apk add dbus xdg-desktop-portal xdg-desktop-portal-wlr linux-firmware wireless-tools iwd util-linux
apk add pciutils usbutils coreutils binutils findutils grep iproute2 
apk add pulseaudio pulseaudio-jack pulseaudio-alsa pavucontrol pamixer playerctl
apk add bluez mako 
apk add python3 network-manager-applet kanshi clipman gnome-tweaks gnome-keyring micro vim font-misc-misc ttf-font-awesome
apk add terminus-font ttf-inconsolata
apk add curl zsh light gawk grim slurp feh
apk add bash bash-doc bash-completion
apk add udisks2 udisks2-doc
apk add mesa-dri-gallium
apk add wofi

echo "====================> Installing sway and custom packages"
apk add eudev
setup-devd udev
apk add nwg-launchers-bar
apk add waybar
apk add sway sway-doc xwayland 
apk add swaylock swaylockd swaybg swayidle 
apk add ttf-dejavu elogind polkit-elogind autotiling 
apk add qutebrowser aerc tut thunar azote
apk add foot
apk add seatd

echo "====================> Update main config files"
cp -r configs/* /home/$ALPUSER/.config/
cp -r mimeapps.list /etc/xdg/
cat .profile >> /home/$ALPUSER/.profile

echo "====================> Include default wallpaper"
cp -r configs/wallpaper /home/$ALPUSER/

echo "====================> Configuring services to launch at boot"
rc-update add seatd
rc-service seatd start
adduser bt seat
rc-service dbus start
rc-update add dbus
rc-service iwd start
rc-update add iwd

echo "====================>  Setup complete"
echo "You can now reboot your machine."
