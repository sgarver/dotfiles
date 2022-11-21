
local M = {}

function M.setKeyMaps()
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer = 0})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {buffer = 0})
    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, {buffer = 0})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {buffer = 0})
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, {buffer = 0})
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, {buffer = 0})
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {buffer = 0})
    vim.keymap.set('n', '<leader>tr', "<cmd>Telescope lsp_refererences<cr>", {buffer = 0})
    vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, {buffer = 0})
    vim.keymap.set('n', '<leader>dl', "<cmd>Telescope diagnositcs<cr>", {buffer = 0})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {buffer = 0})
end

return M

