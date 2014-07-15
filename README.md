### Dotfiles

* Clone repository to your home folder.
* Symlink rc files to your home folder with dot prefixed filenames. (like `bash_profile > .bash_profile`)

#### Requirements

* vim 2.7+
* bash 4.0+
* ctags

#### Plugin installation for vim

    $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

In vim

    :BundleInstall
    
#### Notes

Mac OS X Mission Control shortcuts conflicting with vim tab switching shortcuts. You need to disable shortcuts from System Preferences > Keyboard panel. 

#### Vim keymaps

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

####Fixing Bash on OS X

    brew install bash;echo /usr/local/bin/bash|sudo tee -a /etc/shells;chsh -s /usr/local/bin/bash

