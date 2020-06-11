#!/bin/bash

. ~/.xprofile

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
dbus-update-activation-environment --systemd DISPLAY

ssh-agent dwm
