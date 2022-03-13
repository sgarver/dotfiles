
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

call plug#end()

let g:ale_linters = {'clojure': ['clj-kondo']}
let g:rainbow_active = 1

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

colorscheme iceberg
filetype indent on
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
nmap <silent> <C-P> :Files<CR>
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
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
syntax on

