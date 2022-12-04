export EDITOR=/usr/bin/vim
export BROWSER=qutebrowser
export TERM=foot
export MAIL=aerc
export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# Session
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=sway
export XDG_CURRENT_DESKTOP=sway

# GTK
export MOZ_ENABLE_WAYLAND=1             # only start firefox in wayland mode and no other GTK apps
export MOZ_DBUS_REMOTE=1                # fixes firefox is already running, but is not responding
#export GDK_BACKEND=wayland             # this can prevent programs from starting (e.g. chromium and electron apps). therefore, this should be set per app instead of globally.

# clutter
#export CLUTTER_BACKEND=wayland          # this can prevent programs from starting. therefore, this should be set per app instead of globally.


# elementary
export ECORE_EVAS_ENGINE=wayland-egl
export ELM_ENGINE=wayland_egl
#export ELM_DISPLAY=wl
#export ELM_ACCEL=gl

# java
export _JAVA_AWT_WM_NONREPARENTING=1
export NO_AT_BRIDGE=1
export BEMENU_BACKEND=wayland

# sdl
#export SDL_VIDEODRIVER=wayland	         # this can prevent programs from starting old sdl games. therefore, this should be set per app instead of globally.

# Qt
export QT_QPA_PLATFORM=wayland
#export QT_WAYLAND_FORCE_DPI=physical
#export QT_WAYLAND_DISABLE_WINDOWDECORATION=1


if test -z "${XDG_RUNTIME_DIR}"; then
  export XDG_RUNTIME_DIR=/tmp/$(id -u)-runtime-dir
  if ! test -d "${XDG_RUNTIME_DIR}"; then
    mkdir "${XDG_RUNTIME_DIR}"
    chmod 0700 "${XDG_RUNTIME_DIR}"
  fi
fi
