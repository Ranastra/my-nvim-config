-- require("catppuccin").setup({
-- 	transparent_background = true,
-- 	color_overrides = {
-- 		mocha = {
-- 			base = "#000000",
-- 		},
-- 	},
-- })
-- vim.cmd("colorscheme catppuccin-mocha")

-- require("tokyonight")
-- vim.cmd("colorscheme tokyonight-night")

vim.cmd("colorscheme oxocarbon")

require("transparent").setup({
	extra_groups = { -- table/string: additional groups that should be cleared
		"BufferLineTabClose",
		"BufferlineBufferSelected",
		"BufferLineFill",
		"BufferLineBackground",
		"BufferLineSeparator",
		"BufferLineIndicatorSelected",
		"NormalFloat",
		"NvimTreeNormal",
		"TelescopeNormal",
		"TelescopePromptBorder",
		"TelescopeBorder",
		"TelescopeSelection",
		"TelescopePromptNormal",
		"Telescope",
		"pmenu",
		"pmenuSBar",
	},
	-- exclude_groups = {}, -- table: groups you don't want to clear
})
-- TelescopePromptBorder
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#0000ff" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#0000ff" })
vim.g.transparent_enabled = true
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- highlight TODO
require("todo-comments").setup(
)
vim.lsp.handlers["textDocument/publishDiagnostics"] =
	vim.lsp.with(
		vim.lsp.diagnostic.on_publish_diagnostics,
		{
			underline = false
		}
	)
