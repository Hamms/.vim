" Plugin settings from http://sontek.net/turning-vim-into-a-modern-python-ide
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype on

map <leader>n :NERDTreeToggle<CR>

syntax on
filetype plugin indent on

set backspace=2
set shiftround
set autoindent

set mouse=a

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set incsearch
set number
set numberwidth=4

set nowrap
set novisualbell
set scrolloff=5
set nocompatible
set sidescrolloff=5

set background=dark
set ruler
set noerrorbells
set showmatch

"
" textwidth in comments mode only
"

set textwidth=72
set formatoptions=cq

"
" custom syntax highlighting
"

au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.less set filetype=less

