" execute pathogen#infect()

filetype plugin indent on
set expandtab
set autowrite
syntax enable

set hlsearch

set tabstop=2

" g:solarized_termcolors= 16 | 256 
" g:solarized_termtrans = 0 | 1 
" g:solarized_degrade = 0 | 1 
" g:solarized_bold = 1 | 0 
" g:solarized_underline = 1 | 0 
" g:solarized_italic = 1 | 0 
" g:solarized_contrast = "normal"| "high" or "low" 
" g:solarized_visibility= "normal"| "high" or "low"

set background=dark
" let g:solarized_termtrans = 1 " This gets rid of the grey background
" let g:solarized_termcolors=256
" colorscheme solarized

let g:go_fmt_command = "goimports"


set pastetoggle=<F3>

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END


highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
