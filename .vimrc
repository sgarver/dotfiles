set expandtab
set tabstop=4
set shiftwidth=4
set number
set list
set listchars=tab:>.,trail:$,extends:#,nbsp:.
set ignorecase
set smartcase
set hidden
set backupdir=~/.vim/tmp
set dir=~/.vim/tmp
set pastetoggle=<F2>

set t_Co=256

syntax enable
set background=dark

" do not keep swp or a backup files
set nobackup
set nowritebackup
set noswapfile

" hide gui stuff
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-ashes

colorscheme base16-ashes
set guifont=Liberation\ Mono\ for\ Powerline\ Regular\ 9

"if has("gui_running")
"  if has("gui_gtk2")
"    colorscheme base16-ashes
"    set guifont=Ubuntu\ Mono\ 10
"  elseif has("gui_macvim")
"    colorscheme base16-ashes
"  endif
"endif

set hlsearch
set incsearch
set cursorcolumn

set nocompatible               " be iMproved
filetype plugin indent on      " required!

set wildmenu
set cmdheight=1
set laststatus=2
set ruler
set showmode
set showcmd
" fileformat, encoding, type, buffer num, RO/HELP/PREVIEW, mod flag, filepath; spacer; line pos, line/total, percentage
"set statusline=%{&ff}\ \%{&fenc}\ \b%1.3n\ \%#StatusFTP#\%Y\
"\%#StatusRO#\%R\ \%#StatusHLP#\%H\ \%#StatusPRV#\%W\ \%#StatusModFlag#\%M\ \%#StatusLine#\%f\%=\%1.7c\ \%1.7l/%L\ \%p%%
"setglobal fileformat=dos

if argc() == 2
  silent all
endif

" vundle stuff
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

