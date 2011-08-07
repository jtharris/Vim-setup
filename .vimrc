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

" Incremental search (Emacs style)
set incsearch

" Adapt colors for dark background
set background=dark

" Statusline hotness
set statusline=%F%m%r%h%w\ %y\ %=Buffer:\ %n\ (%l,%v)\ [%p%%] 
set laststatus=2
highlight StatusLine ctermfg=darkgrey ctermbg=white

" Fix for Ubuntu default
let g:netrw_winsize=""

syntax enable
filetype on
filetype plugin indent on

" Ruby convention for tabs
autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2

" Same for coffeescript
autocmd FileType coffee setlocal tabstop=2 softtabstop=2 shiftwidth=2

" Gemfiles are ruby files
autocmd BufRead,BufNewFile Gemfile setfiletype ruby

" Eclipse-style block movement
vmap <C-j> :m'>+<CR> gv
vmap <C-k> :m'<-2<CR> gv
