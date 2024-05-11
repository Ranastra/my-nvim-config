vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.smartindent = false
vim.opt.shiftwidth = 4
vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 6
--vim.opt.colorcolumn = "90"

-- Set the indentation width for Lua files to 4 spaces
vim.cmd('autocmd FileType * setlocal shiftwidth=4 tabstop=4')
vim.cmd('autocmd FileType lua setlocal shiftwidth=4 tabstop=4')
vim.cmd('autocmd FileType php setlocal shiftwidth=4 tabstop=4')
vim.cmd('autocmd FileType html setlocal shiftwidth=2 tabstop=2')
