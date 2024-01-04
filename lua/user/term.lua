require("toggleterm").setup({
	size = 20,
	open_mapping = [[<c-\>]],
})
vim.keymap.set(
	"n",
	"<C-/>",
	":ToggleTerm size=40 dir=~/Desktop direction=horizontal name=desktop <CR>",
	{ noremap = true, silent = true }
)
