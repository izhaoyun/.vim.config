set nocompatible               
filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

call vundle#end()

filetype plugin indent on
syntax enable
syntax on

set nu
"set sw=4 	
"set ts=4 
set t_Co=256

set hlsearch
set incsearch

set linebreak
set showmatch
set novisualbell
set enc=utf-8
let &tenc=&enc
set ambiwidth=double
set fileencoding=utf-8
set fileencodings=utf-8,gb18030,gbk,big5,gb2312,cp936,ucs-bom,latin1
runtime ftplugin/man.vim

set autochdir
set wildmenu
set ruler
set showcmd
set laststatus=2

set mouse-=a	" disable mouse for all modes
set mousehide	" hide mouse when characters are typed

set guioptions-=m
set guioptions-=T
set langmenu=zh_CN.UTF-8
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim

"set tw=78 	"textwidth
set fo+=mB
set wrap
set whichwrap=b,s,<,>,[,] 
set backspace=indent,eol,start

" saving of a buffer
nmap <leader>w :w!<cr>
" switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

map <leader>tt :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>tn :tabNext<cr>
map <leader>tp :tabprevious<cr>
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

set autoindent
set cindent
set cino=>4,:0,g0

set expandtab
set smarttab

set completeopt=longest,menu,preview
autocmd CursorMovedI * if pumvisible() == 0 | pclose | endif
autocmd InsertLeave  * if pumvisible() == 0 | pclose | endif
set dictionary+=/usr/share/dict/words
map ,ss :setlocal spell!<cr>

set foldmethod=indent
set foldlevel=99
