#!/usr/bin/env bash


. /etc/lsb-release

distrib="$(echo $DISTRIB_ID | awk '{print tolower($0)}')"
distrib_version="$DISTRIB_RELEASE"

# show system information
lsb_release -a

sudo -E apt-get update
sudo -E apt-get install -y software-properties-common

sudo -E add-apt-repository -y ppa:pkg-vim/vim-daily
sudo -E apt-get update
sudo -E apt-get install -y vim
