#!/bin/bash

set -euo pipefail
set -o xtrace

cd ~
ln -s dotfiles/bash_profile .bash_profile
ln -s dotfiles/inputrc .inputrc
ln -s dotfiles/screenrc .screenrc
ln -s dotfiles/vimrc .vimrc
touch dotfiles/bash_profile.post

