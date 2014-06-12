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

" do not keep a backup files 
"set nobackup
"set nowritebackup

colorscheme xoria256

if has("gui_running")
  if has("gui_gtk2")
    colorscheme solarized
    set guifont=Dejavu\ Sans\ Mono\ 9
  elseif has("gui_gtk3")
    colorscheme solarized
    set guifont=Dejavu\ Sans\ Mono\ 9
  elseif has("gui_macvim")
    colorscheme solarized
    " set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

let s:uname = system("echo -n \"$(uname)\"")

" Set syntax for specify format
set ft=txt
au BufWinEnter *.vb set ft=vb
au BufWinEnter *.aspx set ft=html
au BufWinEnter *.master set ft=html
au BufWinEnter *.txt set ft=txt
au BufRead,BufNewFile *.js set filetype=javascript
au BufRead,BufNewFile *.handlebars set filetype=javascript
au BufRead,BufNewFile *.json set filetype=javascript
au BufNewFile,BufRead *  setfiletype txt

set hlsearch
set incsearch

" mapping ctl-s-p to toggle spelling 
:map <C-S-P> :setlocal spell! spelllang=en_us<CR>

" mapping ctl-n ctl-n to show and hide line numbers
:nmap <C-N><C-N> :set invnumber<CR>

" target style line and column highlighting
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
"set cursorline cursorcolumn
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

" HTML TIDY MAPPING
:vmap ,x :!tidy -q -i --show-errors 0<CR>

set go-=T

execute pathogen#infect()

