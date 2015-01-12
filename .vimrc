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

let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-ashes

if has("gui_running")
  if has("gui_gtk2")
    colorscheme base16-ashes
    set guifont=Ubuntu\ Mono\ 10
  elseif has("gui_macvim")
    colorscheme base16-ashes
  endif
endif

let s:uname = system("echo -n \"$(uname)\"")

set hlsearch
set incsearch
set cursorcolumn

set nocompatible               " be iMproved

filetype plugin indent on     " required!

set wildmenu
set cmdheight=1
set laststatus=2
set ruler
set showmode
set showcmd
" fileformat, encoding, type, buffer num, RO/HELP/PREVIEW, mod flag, filepath; spacer; line pos, line/total, percentage
set statusline=%{&ff}\ \%{&fenc}\ \b%1.3n\ \%#StatusFTP#\%Y\
\%#StatusRO#\%R\ \%#StatusHLP#\%H\ \%#StatusPRV#\%W\ \%#StatusModFlag#\%M\ \%#StatusLine#\%f\%=\%1.7c\ \%1.7l/%L\ \%p%%
setglobal fileformat=dos

if argc() == 2
  silent all
endif

" minibufexplorer settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

