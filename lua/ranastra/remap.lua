vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- add matching braces
-- vim.keymap.set("i", "(", "()<Left>")
-- vim.keymap.set("i", "{", "{}<Left>")
-- vim.keymap.set("i", "<", "<><Left>")
-- vim.keymap.set("i", "[", "[]<Left>")
-- vim.keymap.set('i', '"', '""<Left>')
-- vim.keymap.set("i", "'", "''<Left>")
-- half page scrollinl
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- yank to / paste from system clipboard
vim.keymap.set('n', '<leader>yy', '"+yy', { noremap = true })
vim.keymap.set("n", "<leader>p", "\"+p", { noremap = true })
-- esc is to far away on the keyboard ...
vim.keymap.set('i', '<C-q>', '<Esc>', { noremap = true })
-- Map a command to a keyboard shortcut in Normal mode
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprev<Enter>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<Enter>', { noremap = true, silent = true })
