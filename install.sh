#!/bin/bash

# deps
# build-essential cmake python-dev

_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# install patched fonts
"$_dir"/fonts/install.sh

# setup vim
ln -s "$_dir"/vim/vimrc ~/.vimrc
[[ -d "$_dir"/vim/bundle/Vundle.vim ]] \
    || git clone https://github.com/gmarik/Vundle.vim.git "$_dir"/vim/bundle/Vundle.vim
if [ -t 1 ]; then
    vim +PluginInstall +qall
else
    echo| echo | "$_dir/pvi" -j 4 -b "$_dir/vim/bundle"
fi
"$_dir"/vim/bundle/YouCompleteMe/install.py
