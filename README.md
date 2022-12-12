# alpine-linux-setup

**Alpine Linux Setup**

## What is This

An absolutely bare-bones Sway Desktop Alpine installation.

This is meant to be a minimal build to help you get started with Alpine Linux.

## What You Get

![initial login screen](screenshot.png)

- swaywm
- waybar
- wofi
- qutebrowser
- foot
- aerc-mail
- tut
- thunar
- azote
- curl
- gawk 
- zsh
- bash
- pipwire
- pulseaudio
- clipman
- python3
- sudo
- vim
- micro

..and a little bit more. Take a look through the `setup.sh` to see all included packages (and feel free to remove things you don't want/need!)

## Before You Begin

You will need to edit some of the content inside the `setup.sh` file. Most importantly, changing the default user that gets created during the installation process. Feel free to also look through the include dotfiles and tweak as you see fit.

## Base Installation
* download iso from internet
* flash iso to USB drive
* run `setup-alpine` script:
    - us
    - us
    - [custom-hostname] 
    - eth0
    - EST
    - none
    - none
    - 1
    - none
    - busybox
    - sda
    - sys
    - y
* `reboot`

## Auto Personalization
* login as `root`
* `apk add git`
* `git clone https://git.sr.ht/~bt/alpine-linux-setup`
* `cd alpine-linux-setup`
* `ash welcome.sh` or `ash setup.sh` if your repos are already set


## Inspiration

Heavily taken/inspired from both:

- [https://github.com/ibuetler/alpine-linux-setup](https://github.com/ibuetler/alpine-linux-setup)
- [https://github.com/git-sgmoore/AlpineLinux-DailyDriverDesktop](https://github.com/git-sgmoore/AlpineLinux-DailyDriverDesktop)
