#!/usr/bin/env bash

set -ex

export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# deps
apt-get update
apt-get install -y --no-install-recommends \
        build-essential \
        ca-certificates \
        cmake \
        cscope \
        curl \
        exuberant-ctags \
        fontconfig \
        git \
        python \
        python-dev \
        vim \
        wget \
        zsh

# symlinks
ln -sfv "$DOTFILES_DIR/vim" "$HOME/.vim"
ln -sfv "$DOTFILES_DIR/vim/.vimrc" "$HOME/.vimrc"
ln -sfv "$DOTFILES_DIR/env" "$HOME/.env"

# installing powerline fonts
# $DOTFILES_DIR/fonts/install.sh

# installing vim plugins
vim +PluginInstall +qall
$HOME/.vim/bundle/youcompleteme/install.py --clang-completer

# installing oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" ||  true
ln -svf "$DOTFILES_DIR/themes/dracula/zsh/dracula.zsh-theme" "$HOME/.oh-my-zsh/themes/dracula.zsh-theme"
echo 'source ~/.env' >> ~/.zshrc
echo 'source ~/.dotfiles/bin/functions' >> ~/.zshrc

