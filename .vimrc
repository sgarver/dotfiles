
" Install Plug if not already installed 
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'bhurlow/vim-parinfer'
Plug 'cocopon/iceberg.vim'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-fireplace'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'logico/typewriter-vim'
Plug 'junegunn/limelight.vim'

Plug 'chriskempson/base16-vim'

call plug#end()

colorscheme base16-black-metal-immortal

let g:ale_linters = {'clojure': ['clj-kondo']}
let g:rainbow_active = 1

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_guifg = 'DarkGray'

filetype indent on

nmap <silent> <C-P> :Files<CR>

"nmap <F12> :Goyo <bar> Limelight!!<CR>"
nmap <silent> <F12> :Goyo <CR>

set autoindent
set background=dark
set backspace=2
set cursorline
set hlsearch
set list
set listchars=eol:¬,tab:<->,trail:·,extends:+,precedes:+
set mouse=a
set nobackup
set noswapfile
set nowrap
set number
set paste
set t_Co=256
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set termguicolors

syntax on

"autocmd vimenter * hi Normal guibg=NONE term=NONE cterm=NONE ctermbg=NONE
autocmd vimenter * hi Normal guibg=NONE term=NONE cterm=NONE ctermbg=NONE
autocmd vimenter * hi CursorLineNr cterm=NONE

autocmd! User GoyoLeave hi Normal guibg=NONE term=NONE cterm=NONE ctermbg=NONE
autocmd! User GoyoLeave hi CursorLineNr cterm=NONE

