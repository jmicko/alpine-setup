#!/bin/ash

rc-service dbus start
rc-update add dbus
setup-devd udev

rc-service lightdm start
rc-update add lightdm

reboot
