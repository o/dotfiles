### Dotfiles

Collection of my dotfiles, including configurations for vim, tmux, bash, zsh, screen, mutt and git comes with opinionated defaults. These configuration files are tested under Mac OS X and Debian/Ubuntu.

#### Requirements for each rc file

* vim 2.7+
* bash 4.0+
* screen 4.0+
* mutt 1.5+
* lynx

#### Installation

* Clone repository to your home folder.
* Symlink rc files (all configuration files is optional, you should activate any of them you need) to your home folder with dot prefixed filenames. (like `bash_profile > .bash_profile`)

Quick Install:

    ./dotfiles/install.sh

For example:

    $ ln -s dotfiles/bash_profile .bash_profile

This will activates git-prompt (branch name and status) and git-completion (for tab-completion of commands, remotes, branches etc..) in bash. 
Also adds some useful aliases and options to bash (Filename correction, colored grep, ls-colors).

    $ ln -s dotfiles/inputrc .inputrc
    
This will activates case insensitive filename completion and partial history search with up and down arrow.

For the installing vim configuration:

    ./dotfiles/clone-vim-plugins.sh

This command installs following packages:

* lightline.vim
* vim-signify.git
* nordtheme
* https://github.com/jnurmine/Zenburn.git

Vim keymaps

    \l :setlocal number
    \o :set paste
    
    <C-k> :wincmd k
    <C-j> :wincmd j
    <C-h> :wincmd h
    <C-l> :wincmd l

    <C-Right> :tabnext
    <C-Left> :tabprevious
    <C-t> :tabnew
    
Fixing Bash on OS X

    brew install bash;echo /usr/local/bin/bash|sudo tee -a /etc/shells;chsh -s /usr/local/bin/bash

GNU Screen configuration customized for daily basic use, activate it with:

    ln -s dotfiles/screenrc .screenrc
    
Key bindings

    bind ',' prev
    bind '.' next

    bind = resize =
    bind + resize +1
    bind - resize -1
    bind _ resize max

muttrc configuration is fairly customized for using with GMail, activate it with:

    ln -s dotfiles/muttrc .muttrc

Key bindings

    bind editor <space> noop
    macro index gi "<change-folder>=INBOX<enter>" "Go to inbox"
    macro index ga "<change-folder>=[Gmail]/All Mail<enter>" "Go to all mail"
    macro index gs "<change-folder>=[Gmail]/Sent Mail<enter>" "Go to Sent Mail"
    macro index gd "<change-folder>=[Gmail]/Drafts<enter>" "Go to drafts"

You need to change username / password configration for yourself in `muttrc` file. Also mutt configured for displaying HTML mails instead of plain text, you must install `lynx` for that.


