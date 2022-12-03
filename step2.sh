#!/bin/ash

rc-update add dbus
rc-update add lightdm
rc-service dbus start
rc-service lightdm start

reboot
