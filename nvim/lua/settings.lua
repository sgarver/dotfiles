local setKeyMaps = require('keymaps').setKeyMaps

require('telescope').setup{
    defaults = {
        prompt_prefix = "$ "
    }
}

require('telescope').load_extension('fzf')

-- LSP
-- install and manage LSP servers, DAP servers, linters, and formatters
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua", "omnisharp", "rust_analyzer" }
})

require('fidget').setup()

local on_attach = function()
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

-- servers to use
require("lspconfig").sumneko_lua.setup { on_attach = on_attach }
require("lspconfig").rust_analyzer.setup { on_attach = on_attach }
require("lspconfig").omnisharp.setup { on_attach = on_attach }


