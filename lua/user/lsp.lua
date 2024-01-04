local lsp = require("lsp-zero")
lsp.preset("recommended")
lsp.setup()
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.*",
	callback = function()
		print("save buffer")
		vim.cmd(":lua vim.lsp.buf.format()")
	end,
})
