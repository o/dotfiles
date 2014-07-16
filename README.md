### Dotfiles

* Clone repository to your home folder.
* Symlink rc files to your home folder with dot prefixed filenames. (like `bash_profile > .bash_profile`)

#### Requirements

* vim 2.7+
* bash 4.0+
* ctags
* screen 4.0+
* mutt 1.5+
* lynx

#### Installation

    $ ln -s dotfiles/bash_profile .bash_profile

This will activates git-prompt (branch name and status) and git-completion (for tab-completion of commands, remotes, branches etc..) in bash. 
Also adds some useful aliases and options to bash (Filename correction, colored grep, ls-colors).

    $ ln -s dotfiles/inputrc .inputrc
    
This will activates case insensitive filename completion and partial history search with up and down arrow.

For the installing vim configuration:

    $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    $ ln -s dotfiles/vimrc .vimrc

In vim

    :BundleInstall

This command installs following packages:

* gitgutter
* airline
* ctrl-p
* nerdtree
* syntastic
* vim-snipmate and snippets
* tagbar
* autoclose
* supertab
* colorschemes

Note for OSX users: Mission Control shortcuts conflicting with vim tab switching shortcuts. You need to disable shortcuts from System Preferences > Keyboard panel. 

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
    
    <C-n> :NERDTreeToggle
    \b :TagbarToggle

Fixing Bash on OS X

    brew install bash;echo /usr/local/bin/bash|sudo tee -a /etc/shells;chsh -s /usr/local/bin/bash

For installing GNU screen configuration:

    ln -s dotfiles/screenrc .screenrc

To activating muttrc GMail configuration:

    ln -s dotfiles/muttrc .muttrc

You need to change username / password configration for yourself in `muttrc` file. Also `muttrc` configured for displaying HTML mails, you must install `lynx` for that.

This configrations both tested on Mac OS X and Ubuntu, if you have any issues with this configrations please open an issue to me.


