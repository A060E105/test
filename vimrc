colorscheme slate
syntax on
set ai
set nu
set tabstop=4
set shiftwidth=4
set bg=dark
set cursorline
set cursorcolumn
set showcmd
set nobackup
set noundofile
set hlsearch
set guifont=consolas:h16
set fileencodings=utf-8,big5
"set guifont=courier_New:h16

hi cursorline ctermbg=darkred guibg=darkred
hi cursorcolumn ctermbg=darkred guibg=darkred

inoremap {<CR> {<CR>}<Esc>ko
nnoremap <silent> <C-l> :<C-u>noh<CR><C-l>
