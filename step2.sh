#!/bin/ash

rc-service dbus start
rc-update add dbus

rc-update add seatd
rc-service seatd start

rc-service lightdm start
rc-update add lightdm

setup-devd udev

reboot
