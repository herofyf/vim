set nocompatible
filetype off


filetype plugin on
" required
filetype plugin indent on

"""""""""""""""""""""""""""
" use vundle
""""""""""""""""""""""""""""
source $HOME/vimfiles/bundle/vundle_vimrc


" make  backspace work like most other apps
set backspace=indent,eol,start
syntax enable
syntax on
set guifont=Consolas\ 11

set paste

set clipboard=unnamed
"colorscheme blue
colorscheme desert 



set number


"-------
" create fold zf
" zd: del
" zE: clear
"
" zo:expand
"-------
set foldmethod=manual

set t_Co=256

" no highlight while search match
"set nohlsearch
highlight Search ctermbg=LightGreen

set softtabstop=4
set tabstop=4
set shiftwidth=4

set mouse=a
"set selection=exclusive
"set selectmode=mouse,key
"set fdm=indent

set incsearch

set showcmd

set nobackup
set noswapfile
set smarttab

"---------

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8

"----------------
" WinManager setting
"----------------
"let g:winManagerWindowLayout = "FileExplorer|TagList"  
"let g:winManagerWindowLayout = "NERDTree|BufExplorer|TagList"
let g:winManagerWindowLayout = "NERDTree|BufExplorer"  
let g:winManagerWidth = 30  
let g:defaultExplorer = 0  
nmap <C-W><C-F> :FirstExplorerWindow<cr>  
nmap <C-W><C-B> :BottomExplorerWindow<cr>  
nmap <C-W><C-T> :WMToggle<cr>  

"
"
let Tlist_WinHeight=50

" to resize windows
" shift + left/right..
nmap <S-left> : wincmd <<cr>
nmap <S-right> : wincmd ><cr>
nmap <S-up> : wincmd +<cr>
nmap <S-down> : wincmd -<cr>

" ctrl + k while in normal mode to move cursor between windows
" you can :h :silent  
nmap <silent> <C-k> :wincmd k<cr>
nmap <silent> <C-j> :wincmd j<cr>
nmap <silent> <C-h> :wincmd h<cr>
nmap <silent> <C-l> :wincmd l<cr>


" insert mode map, just to move cursor while in insert mode
imap <C-h>  <C-O>h
imap <C-k>  <C-O>k
imap <C-j>  <C-O>j
imap <C-l>  <C-O>l

" to open conque emulator
nmap <silent> <C-t> :ConqueTermSplit cmd<cr>
nmap <silent> <C-n> :close<cr>
" to close  :close


" to switch tab
nmap <silent> <F7> :tabn <cr>
nmap <silent> <F8> :tabp <cr>
"

" to auto change working directory except for /tmp directory
" :h :bar for |
autocmd BufEnter * if expand("%:p:h") !~ '/tmp' | silent! lcd %:p:h | endif

" move cursor in insert mode


"""""""""""""""""""""""""""""""""""""""""""""
" YCM end
" """"""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTree_title="[NERD Tree]"

function! NERDTree_Start()
	exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
	return 1
endfunction

nmap <silent> <F6> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <cr><cr>

" for error char 
let g:NERDTreeDirArrows = 0


" in order to avoid open new window while not save
set hidden

"""""""""""""""""""""""""""""""""""""""""""""
" NERDTree end
"
"""""""""""""""""""""""""""""""""""""""""""


function Test() range
  echo system('echo '.shellescape(join(getline(a:firstline, a:lastline), "\n")).'| pbcopy')
endfunction
