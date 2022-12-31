vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- dap
vim.keymap.set("n", "<leader>g", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<F10>", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")
