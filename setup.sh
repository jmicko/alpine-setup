#!/bin/ash

echo "========== Alpine Linux Setup  ================"

echo "====================> Add sudo & create new user (bt)"
apk add sudo
adduser -g "Bradley Taunt" bt
adduser bt wheel

echo "====================> Running setup-xorg-base"
setup-xorg-base

echo "====================> Installing helpful packages"
apk add dbus xdg-desktop-portal xdg-desktop-portal-wlr pipewire linux-firmware wireless-tools iwd util-linux 
apk add pciutils usbutils coreutils binutils findutils grep iproute2 
apk add pulseaudio pulseaudio-alsa pavucontrol pamixer playerctl bluez mako 
apk add python3 network-manager-applet kanshi clipman gnome-keyring micro vim font-misc-misc font-awesome
apk add curl zsh light
apk add bash bash-doc bash-completion
apk add udisks2 udisks2-doc
apk add mesa-dri-gallium
apk add wofi

echo "====================> Installing sway and custom packages"
apk add eudev
setup-devd udev
apk add sway sway-doc xwayland 
apk add alacritty swaylock swaylockd swaybg swayidle 
apk add ttf-dejavu elogind polkit-elogind autotiling 
apk add qutebrowser aerc tut thunar azote
apk add seatd

echo "====================> Add user bt to proper groups"
adduser bt input
adduser bt video

echo "====================> Update main config files"
cp -r ./bt/sway /home/bt/.config/
cp -r ./bt/waybar /home/bt/.config/
cp -r ./bt/alacritty /home/bt/.config/
cp -r ./bt/qutebrowser /home/bt/.config/
cat ./bt/.profile >> /home/bt/.profile

echo "====================> Include default wallpaper"
cp -r ./bt/wallpaper /home/bt/

echo "====================> Configuring services to launch at boot"
rc-update add seatd
rc-service seatd start
adduser bt seat
rc-service dbus start
rc-update add dbus
rc-service iwd start
rc-update add iwd

echo "====================> Optional: Connect to a wifi hotspot"
iwctl station wlan0 connect bchhh

echo "====================>  Setup complete"
echo "You can now reboot your machine."
