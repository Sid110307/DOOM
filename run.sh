if ! [ -x "$(command -v Xephyr)" ]; then
  echo 'Error: Xephyr is not installed.' >&2
  sudo apt-get install xserver-xephyr
fi

export DISPLAY=:2
sudo Xephyr $DISPLAY -ac -screen 1366x768x8 &
cd linuxdoom-1.10
make
./linux/linuxxdoom -5

