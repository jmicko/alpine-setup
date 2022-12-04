#!/bin/ash

echo "========== Alpine Linux Setup  ================"

echo "## creating new user (bt) ##"
adduser -g "Bradley Taunt" bt
adduser bt wheel
apk add sudo

echo "## granting user bt access to sudo ##"
cat ./bt/sudoers >> /etc/sudoers

echo "## running setup-xorg-base ##"
setup-xorg-base

echo "## installing helpful packages ##"
apk add dbus pipewire util-linux pciutils usbutils coreutils binutils findutils grep iproute2
apk add bash bash-doc bash-completion
apk add udisks2 udisks2-doc
apk add mesa-dri-gallium
apk add dmenu

echo "## installing sway and custom packages ##"
apk add eudev
setup-devd udev
apk add sway sway-doc xwayland foot bemenu swaylock swaylockd swaybg swayidle ttf-dejavu elogind polkit-elogind qutebrowser aerc tut
apk add seatd

echo "## add user bt to proper groups ##"
adduser bt input
adduser bt video

echo "## configure ~/.profile settings for bt user ##"
cat ./bt/.profile >> /home/bt/.profile

echo "## configuring services to launch at boot ##"
rc-update add seatd
rc-service seatd start
adduser bt seat
rc-service dbus start
rc-update add dbus

echo "## reboot ##"
reboot