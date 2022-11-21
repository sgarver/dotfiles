call plug#begin()

Plug 'neovim/nvim-lspconfig'

" autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" dotnet
Plug 'OmniSharp/Omnisharp-vim'

" colors
"Plug 'arzg/vim-substrata'
Plug 'cocopon/iceberg.vim'
"Plug 'hardselius/warlock'
"Plug 'jonathanfilip/lucius'
"Plug 'owickstrom/vim-colors-paramount'
"Plug 'rebelot/kanagawa.nvim'
"Plug 'romainl/Apprentice'
"Plug 'sainnhe/edge'

call plug#end()

colorscheme iceberg

set autoindent
set smartindent
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
command! PathToFile echo expand('%:p')
command! DestroyTabs %s/\t/    /g

" netrw
let g:netrw_list_hide='.*\.ts$'

let mapleader = ";"

nmap <silent> <leader>s :set spell!<CR>

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" intellisense
nnoremap <leader>? <cmd>lua vim.lsp.buf.hover()<cr>

lua require('settings')

