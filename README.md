# alpine-linux-setup
Alpine Linux Setup

# Alpine Linux
## Base Installation
* download iso from internet
* flash iso to USB drive
* run `setup-alpine` script:
    - us
    - us
    - localhost
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
* `./setup.sh`


## Inspiration

Heavily taken/inspired from both:

- [https://github.com/ibuetler/alpine-linux-setup](https://github.com/ibuetler/alpine-linux-setup)
- [https://github.com/git-sgmoore/AlpineLinux-DailyDriverDesktop](https://github.com/git-sgmoore/AlpineLinux-DailyDriverDesktop)