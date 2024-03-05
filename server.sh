#!/usr/bin/env bash

if ! [ -x "$(command -v Xephyr)" ]; then
  echo 'Error: Xephyr is not installed.' >&2
  sudo apt-get install xserver-xephyr
fi

sudo Xephyr :2 -ac -screen 960x600x8

