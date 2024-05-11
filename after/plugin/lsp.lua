-- local lsp = require("lsp-zero")
-- -- taken from ThePrimeagen
-- lsp.preset("recommended")
--
-- lsp.ensure_installed({
-- 	'rust_analyzer',
-- 	'arduino_language_server',
-- 	'pylsp',
-- 	'html',
-- 	'cssls',
-- 	'clangd',
-- 	'lua_ls',
-- 	'bashls',
-- 	'openscad_lsp',
-- 	'intelephense',
-- 	'tsserver',
-- })
--
-- -- Fix Undefined global 'vim'
-- lsp.nvim_workspace()
--
--
-- local cmp = require('cmp')
-- local cmp_select = { behavior = cmp.SelectBehavior.Select }
-- local cmp_mappings = lsp.defaults.cmp_mappings({
-- 	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
-- 	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
-- 	['<C-y>'] = cmp.mapping.confirm({ select = true }),
-- 	["<C-Space>"] = cmp.mapping.complete(),
-- })
--
-- cmp_mappings['<Tab>'] = nil
-- cmp_mappings['<S-Tab>'] = nil
--
-- lsp.setup_nvim_cmp({
-- 	mapping = cmp_mappings
-- })
--
-- lsp.set_preferences({
-- 	suggest_lsp_servers = true,
-- 	sign_icons = {
-- 		error = 'E',
-- 		warn = 'W',
-- 		hint = 'H',
-- 		info = 'I'
-- 	}
-- })
--
-- lsp.on_attach(function(client, bufnr)
-- local opts = { buffer = bufnr, remap = false }
--
-- 	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
-- 	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
-- 	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
-- 	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
-- 	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
-- 	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
-- 	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
-- 	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
-- 	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
-- 	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
-- end)
--
-- lsp.setup()
-- -- lsp-zero takes out the inline messages
-- vim.diagnostic.config({
-- 	virtual_text = true
-- })
-- if false then
-- 	require("mason").setup()
-- 	require("mason-lspconfig").setup()
-- 	print("test")
-- 	require("lspconfig").lua_ls.setup {}
-- 	require("lspconfig").rust_analyzer.setup {}
-- 	require("lspconfig").bashls.setup {}
-- 	require("lspconfig").arduino_language_server.setup {}
-- 	require("lspconfig").clangd.setup {}
-- 	require("lspconfig").cssls.setup {}
-- 	require("lspconfig").html.setup {}
-- 	require("lspconfig").openscad_lsp.setup {}
-- 	require("lspconfig").pylsp.setup {}
-- 	require("lspconfig").intelephense.setup {}
-- end





-- local lsp = require('lsp-zero').preset({})

-- lsp.on_attach(function(client, bufnr)
-- see :help lsp-zero-keybindings
-- to learn the available actions
-- lsp.default_keymaps({ buffer = bufnr })
-- local opts = { buffer = bufnr, remap = false }
-- vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
-- vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
-- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
-- vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
-- vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
-- vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
-- vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
-- vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
-- vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
-- vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
-- end)
-- local lsp_zero = require('lsp-zero')
--
-- lsp_zero.on_attach(function(client, bufnr)
-- 	-- see :help lsp-zero-keybindings
-- 	-- to learn the available actions
-- 	lsp_zero.default_keymaps({ buffer = bufnr })
-- end)

-- local cmp = require('cmp')
-- local cmp_select = { behavior = cmp.SelectBehavior.Select }
--
-- cmp.setup({
-- 	mapping = lsp.defaults.cmp_mappings({
-- 		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
-- 		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
-- 		['<C-y>'] = cmp.mapping.confirm({ select = true }),
-- 		["<C-Space>"] = cmp.mapping.complete(),
-- 	})
-- })
--
-- -- (Optional) Configure lua language server for neovim
-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
-- -- require("lspconfig").intelephense.setup {}
-- lsp.setup()
-- vim.diagnostic.config({
-- 	virtual_text = true
-- })
--
-- require('mason').setup({})
-- -- require("lspconfig").intelephense.setup {}
-- require('mason-lspconfig').setup({
-- 	-- Replace the language servers listed here
-- 	-- with the ones you want to install
-- 	-- ensure_installed = { 'tsserver', 'rust_analyzer' },
-- 	handlers = {
-- 		lsp.default_setup,
-- 	},
-- })
-- require 'lspconfig'.phpactor.setup {}
--
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })
end)
require('mason').setup({})
require("mason-lspconfig").setup({
        automatic_installation = true,
    })

-- here you can setup the language servers
require('lspconfig').intelephense.setup({})
-- require('lspconfig').pylsp.setup({})
require('lspconfig').pyright.setup({})
-- require('lspconfig').html.setup({})
require('lspconfig').sqlls.setup({})
