#!/bin/bash
echo "umask 022" >> ~/.profile

. provision.sh

sudo apt install -y gawk cgroupfs-mount

# location, timezone
sudo locale-gen ja_JP.UTF-8
sudo localedef -f UTF-8 -i ja_JP ja_JP
sudo update-locale LANG=ja_JP.UTF-8
sudo update-locale LANGUAGE="ja_JP:ja"
sudo ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# filesystem
sudo touch /etc/fstab

. setup.sh
