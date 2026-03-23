#!/usr/bin/env bash

# run this script as sudo

USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)

ln -fs $PWD $USER_HOME/.config/nvim
