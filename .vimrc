
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'vimwiki/vimwiki'

" Initialize plugin system
call plug#end()

colorscheme lucius
filetype indent on
set autoindent
set background=dark
set backspace=2
set cursorline
set list
set listchars=eol:¬,tab:>·,trail:·,extends:>,precedes:<
set nobackup
set nowrap
set number
set paste
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
syntax on


" Vim Wiki
let g:vimwiki_list = [{'path': '~/Sync/wiki/', 'syntax': 'markdown'}]
au FileType vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab


