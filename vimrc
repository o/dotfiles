syntax on

set updatetime=200
set mouse=a

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

filetype indent on

nmap <C-k> :wincmd k<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>

nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-t> :tabnew<CR>

nmap <Leader>l :setlocal number!<CR>:setlocal number?<CR>
nmap <Leader>o :set paste!<CR>:set paste?<CR>

set background=dark
colorscheme zenburn
