-- This file can be loaded by calling `lua require('plugins')` from your init.vim
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim' -- package manager
	use {                     -- fuzzy finder
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use("folke/tokyonight.nvim")                               -- Colortheme
	use({ "catppuccin/nvim", as = "catppuccin" })              -- Colortheme
	use { 'nyoom-engineering/oxocarbon.nvim' }                 -- another sick Colortheme
	use { 'xiyaowong/nvim-transparent' }                       -- remove all background
	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }) -- treesitter
	use({ 'tpope/vim-fugitive', })                             -- git GUI
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			{ 'williamboman/mason.nvim',
				opts = { automatic_installation = true, }
			},
			{ 'williamboman/mason-lspconfig.nvim' },

			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
		}
	}
	use { -- gcc command ... toggle comment
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
	use 'Exafunction/codeium.vim' -- Codeium ai
	use 'ThePrimeagen/vim-be-good' -- motions game?
	use {
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup {}
		end
	}

	use {
		"folke/todo-comments.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	}
end)
