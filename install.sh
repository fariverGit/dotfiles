#!/bin/bash

set -x

# deps
# build-essential cmake python-dev

_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# install patched fonts
"$_dir"/fonts/install.sh

# setup vim
ln -s "$_dir"/vim/vimrc ~/.vimrc
[[ -d "$_dir"/vim/bundle/Vundle.vim ]] \
    || git clone https://github.com/gmarik/Vundle.vim.git "$_dir"/vim/bundle/Vundle.vim
echo | echo | $_dir/pvi -j 4
"$_dir"/vim/bundle/YouCompleteMe/install.py
