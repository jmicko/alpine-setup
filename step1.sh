#!/bin/ash

adduser -g "Bradley Taunt" bt
adduser bt wheel
apk add doas
setup-apkrepos
apk -U upgrade
setup-xorg-base

# install the bare minimum
apk add adwaita-icon-theme bash bemenu dbus dmenu elogind eudev foot glib gvfs lightdm-gtk-greeter mesa-gl pipewire polkit-elogind qutebrowser seatd sway sway-doc swaybg swayidle swaylock swaylockd ttf-dejavu udisks2 waybar wofi xdg-desktop-portal xdg-desktop-portal-wlr xfce4 xfce4-screensaver xfce4-terminal xwayland zsh

adduser bt input
adduser bt video
adduser bt seat

# add user, create wallpaper directory
mkdir -p /home/bt/wallpaper

# user setup bt
cp ./bt/wallpaper/black-sand.jpg /home/bt/wallpaper/black-sand.jpg
chown -R bt:bt /home/bt

# add bt to sudoers
cat ./bt/sudoers >> /etc/sudoers

# greeter background
echo "background=/home/bt/wallpaper/black-sand.jpg" >> /etc/lightdm/lightdm-gtk-greeter.conf

# give bt write access to /opt dir
chown bt:bt /opt


