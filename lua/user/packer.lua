-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
			--use "savq/melange-nvim"
 	use {
				'nvim-telescope/telescope.nvim', tag = '0.1.5',
				requires = { {'nvim-lua/plenary.nvim'} }
		}
			use({
  		"craftzdog/solarized-osaka.nvim",
 		 lazy = false,
 		 priority = 1000,
 		 opts = {},
			})
			use('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
			use "p00f/nvim-ts-rainbow"
	end) 



