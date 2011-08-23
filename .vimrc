set nocompatible
set noswapfile

filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
source ~/.vim/bundles.vim
filetype plugin indent on
syntax on

colorscheme desert

" Tabs & indenting
set tabstop=8
set softtabstop=4
set shiftwidth=4
set shiftround
set autoindent
set smartindent
set expandtab
set smarttab

set ttyfast

" Line breaks
set linebreak
set showbreak=+

" show brackets match in insert mode
set showmatch

set foldmethod=indent
set foldnestmax=1

set ignorecase
set smartcase

set nottybuiltin
set shortmess=at
set ls=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" at :make
set autowrite

"Lisit unprintabele 
nmap ,l : set invlist<CR>

" Make 
nmap ,m :make<CR>
nmap ,M :make!<CR>

" Function key settings - 'make'-shortcuts
map <F5> :cc<CR>
map <F6> :cprev<CR>
map <F7> :cnext<CR>
map <F8> :clist<CR>
map <F9> :clist!<CR>

map <C-F> :CommandT<CR>
map <Leader>f :CommandTFlush<CR>

map <Leader>v :split ~/.vimrc<CR>
map <Leader>s :Gstatus<CR>

map <C-j> <C-w>j<C-w>_
map <C-k> <C-w>k<C-w>_

:set wildignore+=*.o,*.obj,*.beam,*.dump,.git,ebin,ct.results

match ErrorMsg '\%>80v.\+'

" these were used by vimerl
" let g:erlangFold=1
" let g:erlangManSuffix='erl'
