#!/usr/bin/env bash

cd linuxdoom-1.10
make
export DISPLAY=:2
sudo ./linux/linuxxdoom -3

