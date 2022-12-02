#!/bin/ash

rc-service dbus start
rc-update add dbus
rc-service lightdm start
rc-update add lightdm
