syntax on

set encoding=utf8

set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

set autoread
set history=200

set nobackup
set nowb
set noswapfile

set ruler
set cursorline
set number

set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab

set backspace=indent,eol,start

set laststatus=2

set wildmenu
set wildmode=list:longest,full

set showcmd
set title

set autoindent
set nocompatible

filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'majutsushi/tagbar'

Plugin 'bling/vim-airline'

Plugin 'spf13/vim-autoclose'
Plugin 'ervandew/supertab'

Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on

autocmd vimenter * if !argc() | NERDTree | endif
nmap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

nmap <Leader>b :TagbarToggle<CR>
let g:tagbar_autofocus = 1

nmap <C-k> :wincmd k<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>

nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-t> :tabnew<CR>

nmap <Leader>l :setlocal number!<CR>:setlocal number?<CR>
nmap <Leader>o :set paste!<CR>:set paste?<CR>

colorscheme zenburn
