set nu
set sw=4 	
set ts=4 
set t_Co=256

set backspace=indent,eol,start
set ai 	 	"autoindent 
set si 	 	"smartindent
set ci   	"cindent
set cino=>4,:0,g0
set wrap
set whichwrap=b,s,<,>,[,] 

set hls  	"hlsearch
set is   	"incsearch
set tw=78 	"textwidth
set fo+=mB 
set enc=utf-8
let &tenc=&enc
set fenc=utf-8
set fencs=utf-8,gb18030,gbk,big5,gb2312,cp936,ucs-bom,latin1
runtime ftplugin/man.vim

set wmnu 	"wildmenu
set ru 		"ruler
set sc 		"showcmd
set ls=2        "laststatus
set stl=[%F]%y%r%m%q%*%=[%o][Line:%l/%L,Column:%c][%p%%]

set dictionary+=/usr/share/dict/words
map ,ss :setlocal spell!<cr>

set langmenu=zh_CN.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
	    cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
	    cs add $CSCOPE_DB
	endif
	set csverb
endif
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"---------------------------------------------------------

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle "gmarik/vundle"

Bundle "Valloric/YouCompleteMe"
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

Bundle "SirVer/ultisnips"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

Bundle "mhinz/vim-startify"

Bundle "L9"

Bundle "YankRing.vim"
let g:yankring_history_dir = '~/.vim/'
let g:yankring_min_element_length = 2
let g:yankring_enabled = 1  
nnoremap <silent> <F3> :YRShow<CR>
nnoremap <silent> <Leader>yr :YRGetElem<CR>
nnoremap yy  :<C-U>YRYankCount 'yy'<CR>
nnoremap dd  :<C-U>YRYankCount 'dd'<CR>
nnoremap yw  :<C-U>YRYankCount 'yw'<CR>
nnoremap dw  :<C-U>YRYankCount 'dw'<CR>
nnoremap ye  :<C-U>YRYankCount 'ye'<CR>
nnoremap de  :<C-U>YRYankCount 'de'<CR>
nnoremap yiw :<C-U>YRYankCount 'yiw'<CR>
nnoremap diw :<C-U>YRYankCount 'diw'<CR>
nnoremap Y   :<C-U>YRYankCount 'Y'<CR>
nnoremap D   :<C-U>YRYankCount 'D'<CR> 
nnoremap y$  :<C-U>YRYankCount 'y$'<CR>
nnoremap d$  :<C-U>YRYankCount 'd$'<CR>
nnoremap yG  :<C-U>YRYankCount 'yG'<CR>
nnoremap dG  :<C-U>YRYankCount 'dG'<CR>

Bundle "mileszs/ack.vim"
noremap <LocalLeader># "ayiw:Ack <C-r>a<CR>
vnoremap <LocalLeader># "ay:Ack <C-r>a<CR>

Bundle "EasyMotion"
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment
hi EasyMotionTarget ctermbg=none ctermfg=green
hi EasyMotionShade  ctermbg=none ctermfg=blue

Bundle "kien/ctrlp.vim"
let g:ctrlp_map='<c-F11>'
nnoremap <leader>p :CtrlP<CR>
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>t :CtrlPTag<CR>

Bundle "godlygeek/tabular"
let mapleader=','
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

Bundle "scrooloose/nerdtree"
nmap <F4> :NERDTreeToggle<CR>
nmap <leader>nt :NERDTree<cr>:set rnu<cr>
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.$','\~$']
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos=1

Bundle "Gundo"
nnoremap <F5> :GundoToggle<CR>

Bundle "majutsushi/tagbar"
nmap <F6> :TagbarToggle<CR>

Bundle "tpope/vim-fugitive"

Bundle "Stormherz/tablify"

filetype plugin indent on
syntax on



