#!/bin/ash

rc-service dbus start
rc-service lightdm start
rc-update add dbus
rc-update add lightdm

reboot
