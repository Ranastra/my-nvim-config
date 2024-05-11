require('telescope').setup {
	pickers = {
		find_files = {
			theme = "dropdown",
		}
	},
}

local builtin = require('telescope.builtin')
-- builtin.highlights()
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
