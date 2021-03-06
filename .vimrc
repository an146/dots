set nocompatible
set noswapfile

if isdirectory(expand("~/.vim/bundle/vundle"))
    filetype off
    set rtp+=~/.vim/bundle/vundle
    call vundle#rc()
    source ~/.vim/bundles.vim
endif

filetype plugin indent on
syntax on

colorscheme desert256
highlight Pmenu ctermfg=1 ctermbg=4 guibg=grey30
set guifont=Monospace\ 11

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
nmap ,m :make test<CR>
nmap ,M :make! test<CR>

" Swap ' and `, as exact mark jump is more used
nnoremap ' `
nnoremap ` '

let Tlist_GainFocus_On_ToggleOpen = 1
map <F4> :TlistToggle<CR>

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
imap <C-j> <ESC><C-w>j<C-w>_
imap <C-k> <ESC><C-w>k<C-w>_

set wildignore+=*.o,*.obj,*.beam,*.dump,.git,ct.results,doc,ebin

" Snippets should be where they should be, not in .vim/bundle/vundle
let g:snippets_dir=glob("~/.vim/snippets")
let g:snipmgr_snippets_dir=glob("~/.vim/snippets")

" match ErrorMsg '\%>80v.\+'
" autocmd BufNewFile,BufRead *.erl match ErrorMsg '\%>80v.\+'

set grepprg=git\ grep\ -n

set tags+=~/src/aur/tags

" these were used by vimerl
" let g:erlangFold=1
" let g:erlangManSuffix='erl'

au BufNewFile,BufRead *.md set ft=markdown
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
