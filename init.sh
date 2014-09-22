#!/bin/bash
#
# Initial linux env

# sudo without password
echo "$USER ALL=(ALL) NOPASSWD :ALL" >> /etc/sudoers

# Install basic soft
sudo add-apt-repository ppa:fcwu-tw/ppa
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install -y aptitude build-essential linux-headers-$(uname -r) \
  python-dev cmake git vim openssh-server

# Download dotfiles
git init
git remote add origin https://github.com/daniel-djx/dotfiles.git
git pull origin master
git branch --set-upstream-to=origin/master master

# Install vim and plugins
[[ -d .vim/bundle/Vundle.vim ]] \
  || git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
./.vim/bundle/YouCompleteMe/install.sh

# Install python environment
sudo apt-get install -y python-pip
sudo pip install -U pip virtualenv virtualenvwrapper \
   --index-url http://mirrors.aliyun.com/pypi/simple/
mkdir -p ~/workspace/pyproj
cat >> ~/.bashrc <<_CAT;

# Settings for virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/workspace/pyproj
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh

_CAT
