-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])
return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	--use "savq/melange-nvim"
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	})
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },          -- Required
			{ "williamboman/mason.nvim" },        -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },      -- Required
			{ "hrsh7th/cmp-nvim-lsp" },  -- Required
			{ "hrsh7th/cmp-buffer" },    -- Optional
			{ "hrsh7th/cmp-path" },      -- Optional
			{ "saadparwaiz1/cmp_luasnip" }, -- Optional
			{ "hrsh7th/cmp-nvim-lua" },  -- Optional

			-- Snippets
			{ "L3MON4D3/LuaSnip" },          -- Required
			{ "rafamadriz/friendly-snippets" }, -- Optional
		},
	})
	use("neovim/nvim-lspconfig")
	use("jose-elias-alvarez/null-ls.nvim")
	use("MunifTanjim/eslint.nvim")
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use("NvChad/nvim-colorizer.lua")
	use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })
	use("nvim-tree/nvim-tree.lua")
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})
	use("p00f/nvim-ts-rainbow")
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use 'nvim-tree/nvim-web-devicons'
	use "windwp/nvim-ts-autotag"
	use "MunifTanjim/prettier.nvim"
	use "RRethy/vim-illuminate"
	use "sainnhe/gruvbox-material"
end)
