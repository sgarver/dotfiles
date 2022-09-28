
call plug#begin()

Plug 'gabrielelana/vim-markdown'
Plug 'cakebaker/scss-syntax.vim'
"Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'szw/vim-maximizer'


Plug 'neovim/nvim-lspconfig'

Plug 'folke/zen-mode.nvim'


" telescope and dependencies
Plug 'sharkdp/fd'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" or                                , { 'branch': '0.1.x' }

Plug 'romainl/Apprentice'
Plug 'hardselius/warlock'
Plug 'sainnhe/edge'
Plug 'jonathanfilip/lucius'
Plug 'arzg/vim-substrata'
Plug 'cocopon/iceberg.vim'

call plug#end()

colorscheme apprentice

nmap <silent> <leader>s :set spell!<CR>

set autoindent
set autoread
set background=dark
set backspace=2
set cursorline
set hlsearch
set list
set listchars=eol:¬,tab:<->,trail:·,extends:+,precedes:+
set mouse=a
set nobackup
set nospell
set noswapfile
set nowrap
set number
set nopaste
set showmatch
set splitbelow
set splitright
set statusline=%t%m
set t_Co=256
set tabstop=4 shiftwidth=4 expandtab
set termguicolors

filetype indent on
syntax on

command! CopyPathToFile let @+ = expand('%:p')
command! EchoPathToFile echo expand('%:p')
command! DestroyTabs %s/\t/    /g

" netrw
let g:netrw_list_hide='.*\.ts$'

lua require('lspconfig').tsserver.setup{}

"let g:vim_jsx_pretty_colorful_config = 1 " default 0

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

