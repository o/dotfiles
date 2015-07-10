#!/bin/bash

set -e
set -o xtrace

cd ~
ln -s dotfiles/bash_profile .bash_profile
ln -s dotfiles/inputrc .inputrc
ln -s dotfiles/screenrc .screenrc
ln -s dotfiles/vimrc .vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +BundleInstall +qall!

