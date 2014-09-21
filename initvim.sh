#!/bin/bash
#
# Initial linux env

# sudo without password
echo "$USER ALL=(ALL) NOPASSWD :ALL" >> /etc/sudoers

# Install basic soft
sudo add-apt-repository ppa:fcwu-tw/ppa
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install -y aptitude build-essential linux-headers-$(uname -r) python-dev cmake git vim openssh-server

[[ -d .vim/bundle/Vundle.vim ]] \
  || git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
./.vim/bundle/YouCompleteMe/install.sh
