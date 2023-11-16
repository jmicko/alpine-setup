# alpine-linux-setup

**Alpine Linux Setup**

## What is This

An absolutely bare-bones Sway Desktop Alpine installation.

This is meant to be a minimal build to help you get started with Alpine Linux.

## What You Get

![initial login](/~bt/alpine-linux-setup/blob/master/screenshot.jpg)

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
- alsa 
- clipman
- python3
- sudo
- vim
- micro

..and a little bit more. Take a look through the `setup.sh` to see all included packages (and feel free to remove things you don't want/need!)

Most of the config files can be used on other linux distros, just be sure to install the appropriate packages. Notably if running ubuntu, you will need to compile nwg-launchers from source... but if you're running ubuntu, how did you even get here? :)

## Before You Begin

You will need to edit some of the content inside the `setup.sh` file. Most importantly, changing the default user and name that gets created during the installation process. Make sure to also change the directory where the backgroud image is coppied to (change jmicko to your new username). Feel free to also look through the include dotfiles and tweak as you see fit.

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
* `apk add vim`
* edit `/etc/apk/repositories` and give access to all repos
* `apk add sudo bash`
* edit `/etc/sudoers` and give `:wheel` group full access
* `apk add git`
* `git clone https://git.sr.ht/~bt/alpine-linux-setup`
* `cd alpine-linux-setup`
* `ash setup.sh` if your repos are already set


## Inspiration

Originally forked from

- [https://git.sr.ht/~bt/alpine-linux-setup](https://git.sr.ht/~bt/alpine-linux-setup)

Which was in turn heavily taken/inspired from both:

- [https://github.com/ibuetler/alpine-linux-setup](https://github.com/ibuetler/alpine-linux-setup)
- [https://github.com/git-sgmoore/AlpineLinux-DailyDriverDesktop](https://github.com/git-sgmoore/AlpineLinux-DailyDriverDesktop)
