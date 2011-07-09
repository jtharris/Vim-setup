" This is Vim!
set nocompatible

" General tab business
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab       " Spaces only!

" Indentation, etc.
set smartindent
set smarttab
set autoindent

" Autoread when a file is changed externally
set autoread

" This is why we have version control
set nobackup
set nowritebackup
set noswapfile

" Show line numbers
set number

" Show matching braces
set showmatch

" Adapt colors for dark background
set background=dark

syntax enable
filetype on
filetype plugin indent on

" Ruby convention for tabs
autocmd FileType ruby set tabstop=2|set softtabstop=2|set shiftwidth=2

" Eclipse-style block movement
vmap <C-j> :m'>+<CR> gv
vmap <C-k> :m'<-2<CR> gv
