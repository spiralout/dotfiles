call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nobackup
set nowb
set noswapfile
set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set showmatch
set vb t_vb=
set ruler
set nohlsearch  " don't highlight search results
set incsearch  " incremental search
set virtualedit=all
set background=dark
set autochdir
set backspace=indent,eol,start
set hidden                                                                          
set noerrorbells
set laststatus=2
set lazyredraw
set linespace=0
set wildmenu
set matchtime=5
set number  " show line numbers
set report=0
set scrolloff=6
set showcmd
set showmatch
set sidescrolloff=10
set statusline=%<%F%h%m%r%h%w%y\ %{fugitive#statusline()}\ %{&ff}\ =\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P
set ignorecase
set autoread  " reload files that have changed
"set t_Co=256
set showtabline=2
set cursorline

" syntax highlighting
syntax on
set background=dark
colorscheme solarized

filetype on
filetype plugin on
filetype plugin indent on

" auto change to cwd of file
autocmd BufEnter * cd %:p:h

" tabs
nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
imap <C-S-tab> <ESC>:tabprevious<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr>i
map <C-x> :tabclose<cr>

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_python_checker="flake8"

" Supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType="context"
set completeopt=menuone,longest,preview

" fuzzy finder
" map <C-f> :FufFile<cr>

" nerdtree
map <C-n> :NERDTreeToggle<cr>

" :W to write with sudo
command W w !sudo tee % > /dev/null

