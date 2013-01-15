" Load pathogen bundles
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" General
set nocompatible  " this is vim not vi
set history=1000  " 1000 commands 
set autoread      " reload files that have changed

"filetype on
"filetype plugin on
filetype plugin indent on

" Colors
if &t_Co > 2 || has("gui_running")
    set t_Co=256
    syntax on
    set background=dark
    colorscheme solarized
endif

" Backups
set nobackup       " no backups after close
set nowritebackup  " no backup while working
set noswapfile     " no swap files

" UI
set ruler
set showcmd
set nolazyredraw  
set number        " show line numbers
set wildmenu      " turn on wild menu
set nohlsearch    " don't highlight search results
set backspace=indent,eol,start
set statusline=%<%F%h%m%r%h%w%y\ %{fugitive#statusline()}\ %{&ff}\ =\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P
set cursorline

" Text formatting
set autoindent     " auto indent new lines
set smartindent    " be smart about it
set wrap           " wrap long lines
set tabstop=4      " 4 space tabs
set shiftwidth=4   " 4 space indents
set softtabstop=4  " 4 space indents
set expandtab      " expand tabs to spaces
set nosmarttab     " or dumb ones for that matter

set showmatch
set vb t_vb=
set incsearch  " incremental search
set virtualedit=all
set autochdir
set hidden                                                                          
set noerrorbells
set laststatus=2
set linespace=0
set matchtime=5
set report=0
set scrolloff=6
set showmatch
set sidescrolloff=10
set ignorecase


" auto change to cwd of buffer
autocmd BufEnter * cd %:p:h

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_python_checker="flake8"

" Supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType="context"
set completeopt=menuone,longest,preview

" fuzzy finder
" map <C-f> :FufFile<cr>

" nerdtree tabs
map <C-n> :NERDTreeTabsToggle<cr>

" :W to write with sudo
command W w !sudo tee % > /dev/null

