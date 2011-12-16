
set nocompatible
set autoindent
set smartindent
set showmode
set showmatch
set ruler
set nojoinspaces
set nobackup
set nowritebackup
set noswapfile
set encoding=utf-8
set wildmenu

filetype plugin indent on
syntax enable

set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab

set incsearch

if has('gui_running')
	colorscheme pablo
	set gfn=Droid\ Sans\ Mono:h13
	set transparency=15
endif

" Statusline hotness
set statusline=%F%m%r%h%w\ %y\ %=Buffer:\ %n\ (%l,%v)\ [%p%%] 
set laststatus=2
highlight StatusLine ctermfg=darkgrey ctermbg=white

syntax enable
filetype on
filetype plugin indent on
autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" 2 spaces for anything with .html
autocmd BufRead,BufNewFile *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" Use Javascript filetype for JSON files
autocmd BufRead,BufNewFile *.json setfiletype javascript

" Assume that all html files are actually jinja templates
au BufNewFile,BufRead *.html set syntax=htmljinja

" Eclipse-style block movement
vmap <C-j> :m'>+<CR> gv
vmap <C-k> :m'<-2<CR> gv

" NERDTree Settings
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeChDirMode = 2  " Change working directory as NERDTree changes directories

" Fuzzy Finder Hotness...
nnoremap <C-f> :FufCoverageFile<CR>
