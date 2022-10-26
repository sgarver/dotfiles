call plug#begin()

Plug 'gabrielelana/vim-markdown'
Plug 'cakebaker/scss-syntax.vim'
"Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'szw/vim-maximizer'
Plug 'folke/zen-mode.nvim'


Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'


" telescope and dependencies
Plug 'sharkdp/fd'
Plug 'BurntSushi/ripgrep'
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
Plug 'owickstrom/vim-colors-paramount'
Plug 'rebelot/kanagawa.nvim'

call plug#end()

colorscheme paramount

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
command! EchoPathToFile echo expand('%:p')
command! DestroyTabs %s/\t/    /g

" netrw
let g:netrw_list_hide='.*\.ts$'

lua require('lspconfig').tsserver.setup{}
lua require('lspconfig').gopls.setup{}
lua require('lspconfig').sumneko_lua.setup{}
lua require('lspconfig').vimls.setup{}
lua require("mason").setup()


let mapleader = ";"

nmap <silent> <leader>s :set spell!<CR>

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" intellisense
nnoremap <leader>? <cmd>lua vim.lsp.buf.hover()<cr>

autocmd vimenter * hi Normal guibg=NONE term=NONE cterm=NONE ctermbg=NONE
autocmd vimenter * hi CursorLineNr cterm=NONE


