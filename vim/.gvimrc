set guioptions-=T  " hide toobar
set guioptions+=LlRrb
set guioptions-=LlRrb

set guifont=SourceCodePro\ Semibold\ 9
set anti
set showtabline=2

" tabs
nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
imap <C-S-tab> <ESC>:tabprevious<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr>i
map <C-x> :tabclose<cr>
