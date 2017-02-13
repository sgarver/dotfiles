
execute pathogen#infect()

set backspace=2         " backspace in insert mode works like normal editor
syntax on               " syntax highlighting
filetype indent on      " activates indenting for files
set autoindent          " auto indenting
set number              " line numbers
set nobackup            " get rid of anoying ~file

" colors
set  t_Co=256
colorscheme lucius
LuciusDarkLowContrast

" tabs
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" yank to clipboard
set clipboard=unnamed

" show hidden chars
set listchars=space:.,tab:>-,eol:¬
set list

" invisible character colors 
highlight NonText guifg=#4f4f4f
highlight SpecialKey guifg=#4f4f4f

" searching
set hlsearch
set incsearch
"set smartcase
set ignorecase

" highlight row
set cursorline

" word wrap
set nowrap

" disable bell
set noeb vb t_vb=

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']

