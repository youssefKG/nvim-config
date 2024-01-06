require('lspsaga').setup({
	ui = {
		code_action = 'your icon'
	}
})
vim.keymap.set('n', '<C-t>', '<cmd>Lspsaga term_toggle <CR>', { normap = ture, silent = true })
