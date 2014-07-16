### Dotfiles

Collection of my dotfiles, including configurations for vim, bash, screen, mutt and git comes with sensible defaults. My goal is keeping this configurations minimal and with less customized key bindings. This configurations both tested / running on Mac OS X and Ubuntu, if you have any issues with this configurations please open an issue to me.

#### Requirements for each rc file

* vim 2.7+
* bash 4.0+
* ctags
* screen 4.0+
* mutt 1.5+
* lynx

#### Installation

* Clone repository to your home folder.
* Symlink rc files (all configuration files is optional, you should activate any of them you need) to your home folder with dot prefixed filenames. (like `bash_profile > .bash_profile`)

For example:

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


