#!/bin/bash

set -euo pipefail
set -o xtrace

cd ~
ln -s dotfiles/bash_profile .bash_profile
ln -s dotfiles/zshrc .zshrc
ln -s dotfiles/inputrc .inputrc
ln -s dotfiles/screenrc .screenrc
ln -s dotfiles/vimrc .vimrc
ln -s dotfiles/tmux.conf .tmux.conf
ln -s dotfiles/gitconfig .gitconfig
touch dotfiles/bash_profile.post

