filetype plugin indent on
set expandtab
set background=dark
set autowrite
syntax enable

set tabstop=2

" g:solarized_termcolors= 16 | 256 
" g:solarized_termtrans = 0 | 1 
" g:solarized_degrade = 0 | 1 
" g:solarized_bold = 1 | 0 
" g:solarized_underline = 1 | 0 
" g:solarized_italic = 1 | 0 
" g:solarized_contrast = "normal"| "high" or "low" 
" g:solarized_visibility= "normal"| "high" or "low"

let g:solarized_termcolors=256
colorscheme solarized

call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()

let g:go_fmt_command = "goimports"


