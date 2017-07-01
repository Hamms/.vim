" Plugin settings from http://sontek.net/turning-vim-into-a-modern-python-ide
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype on

map <leader>n :NERDTreeToggle<CR>

syntax on
let g:loaded_syntastic_cucumber_cucumber_checker=''
let g:syntastic_javascript_checkers = ['eslint']
filetype plugin on

" OH MY GOD YOU CAN ELIMINATE SWAPFILES
set nobackup
set noswapfile

set backspace=indent,eol,start " better behaved backspace

set fileformat=unix

set shiftround

set mouse=a

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set autoindent

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

set textwidth=80
set formatoptions=cq

"
" custom syntax highlighting
"

au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.less set filetype=less

"
" vp doesn't replace paste buffer
"

function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction

function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction

vmap <silent> <expr> p <sid>Repl()
