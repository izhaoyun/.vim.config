set nocompatible               
filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'L9'
Plugin 'a.vim'
Plugin 'YankRing.vim'
Plugin 'mileszs/ack.vim'
Plugin 'EasyMotion'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-expand-region'
Plugin 'Gundo'
Plugin 'The-NERD-Commenter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'Stormherz/tablify'
Plugin 'AutoClose'
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultiSnips'
Plugin 'honza/vim-snippets'
Plugin 'fatih/vim-go'
Plugin 'bling/vim-airline'
"Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'aklt/plantuml-syntax'

call vundle#end()
filetype plugin indent on
syntax enable
syntax on

" youcompleteme
let g:ycm_collect_identifiers_from_comments_and_strings=1
let g:ycm_add_preview_to_completeopt=1
let g:ycm_key_invoke_completion='<c-j>'
let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" 跳转至定义处或者声明处
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<cr>	
nnoremap <leader>jf :YcmCompleter GoToDefinition<cr>
nnoremap <leader>jc :YcmCompleter GoToDeclaration<cr>

" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list            = 1
"let g:syntastic_check_on_open            = 1
"let g:syntastic_check_on_wq              = 0

" airline
let g:airline#extensions#tabline#enabled = 1

" ultiSnips
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"

" yankring
let g:yankring_history_dir        = '~/.vim/bundle/YankRing.vim'
let g:yankring_min_element_length = 2
let g:yankring_enabled            = 1
nnoremap <silent><c-F9> :YRShow<cr>

" easymotion
let g:EasyMotion_leader_key='<leader><leader>'
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment
hi EasyMotionTarget ctermbg=none ctermfg=green
hi EasyMotionShade  ctermbg=none ctermfg=blue

" ctrlp
let g:ctrlp_cache_dir         = $HOME.'/.cache/ctrlp'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map               = '<c-f>'
map <c-b> :CtrlPBuffer<cr>

" nerdtree
map <leader>nn :NERDTreeToggle<cr> 		" 打开、关闭侧边栏NERDTree
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>
let NERDTreeShowBookmarks   = 1
let NERDTreeShowFiles       = 1
let NERDTreeShowHidden      = 1
let NERDTreeIgnore          = ['\.$','\~$']
let NERDTreeShowLineNumbers = 1
let NERDTreeWinPos          = 1

" vim-multiple-cursors
let g:multi_cursor_next_key='<c-m>'
let g:multi_cursor_prev_key='<c-p>'
let g:multi_cursor_skip_key='<c-x>'
let g:multi_cursor_quit_key='<Esc>'

" gundo
nnoremap <F4> :GundoToggle<cr>

" tagbar
nmap <F8> :TagbarToggle<cr>
"在每次保存文件时自动执行ctags
"autocmd BufWritePost * call system("ctags -R --exclude=.git")
"手动执行ctags
"nnoremap <F5> :!ctags -R<cr>

" tablify
let g:tablify_header_delimiter='#'

" vim-go
au FileType go nmap <leader>s  <Plug>(go-implements)
au FileType go nmap <leader>i  <Plug>(go-info)
au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r  <Plug>(go-run)
au FileType go nmap <leader>b  <Plug>(go-build)
au FileType go nmap <leader>t  <Plug>(go-test)
au FileType go nmap <leader>c  <Plug>(go-coverage)
au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)
au FileType go nmap <leader>dt <Plug>(go-def-tab)

"----------------------------------------------------------
set nu
set sw=4 	
set ts=4 
set t_Co=256

set hls  	"hlsearch
set is   	"incsearch

set lbr
set sm
set enc=utf-8
let &tenc=&enc
set ambiwidth=double
set fenc=utf-8
set fencs=utf-8,gb18030,gbk,big5,gb2312,cp936,ucs-bom,latin1
runtime ftplugin/man.vim

set autochdir
set wmnu 	"wildmenu
set ru 		"显示光标当前位置
set sc 		"showcmd
set ls=2    "总显示状态栏
"set stl=[%F]%y%{fugitive#statusline()}%r%m%q%*%=[%o][Line:%l/%L,Column:%c][%p%%]

set guioptions-=m
set guioptions-=T
set langmenu=zh_CN.UTF-8
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim

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
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<cr><cr>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<cr><cr>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<cr><cr>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<cr><cr>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<cr><cr>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<cr><cr>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<cr>$<cr>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<cr><cr>


"set tw=78 	"textwidth
set fo+=mB
set wrap
set whichwrap=b,s,<,>,[,] 
set backspace=indent,eol,start

"saving of a buffer
nmap <leader>w :w!<cr>
"switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

map <leader>Tn :tabnew<cr>
map <leader>to :tabonly<cr>		" 保留活动标签页，关闭其他所有标签页
map <leader>Tc :tabclose<cr> 	" 关闭当前标签页及其中所有窗口
map <leader>tm :tabmove<cr>		" 重排标签页
map <leader>tn :tabNext<cr>		" 下一标签页
map <leader>tp :tabprevious<cr>	" 上一标签页
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

set ai 	 	"autoindent 
set si 	 	"smartindent
set ci   	"cindent
set cino=>4,:0,g0

set completeopt=longest,menu,preview
autocmd CursorMovedI * if pumvisible() == 0 | pclose | endif
autocmd InsertLeave  * if pumvisible() == 0 | pclose | endif
set dictionary+=/usr/share/dict/words
map ,ss :setlocal spell!<cr>

set foldmethod=indent
set foldlevel=99

" 编辑只读文件方法 :w!!
"cmap w!! %!sudo tee > /dev/null %

" GUI下字体显示
if has("gui_running")
	if has("gui_gtk2")
		set guifont=Tlwg\ Typist\ 10
	elseif has("gui_macvim")
		set guifont=Menlo\ Regular:h14
	elseif has("gui_win32")
		set guifont=Consolas:h11:cANSI
	endif
endif
