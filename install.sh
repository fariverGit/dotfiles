#!/usr/bin/env bash

set -e

export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# # deps
apt-get update
apt-get install -y --no-install-recommends \
        build-essential \
        ca-certificates \
        cmake \
        curl \
        exuberant-ctags \
        git \
        python \
        python-dev \
        vim \
        wget \
        zsh

# symlinks
ln -sfv "$DOTFILES_DIR/vim" "$HOME/.vim"
ln -sfv "$DOTFILES_DIR/vim/.vimrc" "$HOME/.vimrc"

# installing vim plugins
vim +PluginInstall +qall
$HOME/.vim/bundle/youcompleteme/install.py

# installing oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -svf "$DOTFILES_DIR/themes/dracula/zsh/dracula.zsh-theme" "$HOME/.oh-my-zsh/themes/dracula.zsh-theme"
sed -i -r -e 's/(ZSH_THEME=").*(")/\1dracula\2/g' $HOME/.zshrc
