
filetype indent on
nmap <silent> <C-P> :Files<CR>
set autoindent
set background=dark
set backspace=2
set cursorline
set hlsearch
set list
set listchars=eol:¬,tab:>·,trail:·,extends:>,precedes:<
set mouse=a
set nobackup
set noswapfile
set nowrap
set number
set paste
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
syntax on

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" - Make sure you use single quotes
call plug#begin('~/.vim/plugged')

Plug 'jonathanfilip/vim-lucius'
Plug 'szw/vim-maximizer'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()

colorscheme lucius
