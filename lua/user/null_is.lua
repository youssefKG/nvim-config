local null_ls = require("null-ls")

null_ls.setup({
})
--vim.keymap.set("n", ":w", ":lua vim.lsp.buf.format()")
vim.lsp.buf.format({ timeout_ms = 2000 })
