$!/bin/bash

# deps
# build-essential cmake python-dev

_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# install patched fonts
ln -s "$_dir"/fonts ~/.fonts
"$_dir"/fonts/install.sh

# setup vim
ln -s "$_dir"/vim/vimrc ~/.vimrc
[[ -d "$_dir"/vim/bundle/Vundle.vim ]] \
    || git clone https://github.com/gmarik/Vundle.vim.git "$_dir"/vim/bundle/Vundle.vim
vim +PluginInstall +qall
"$_dir"/vim/bundle/YouCompleteMe/install.py

