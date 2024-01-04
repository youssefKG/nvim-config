local opts = {noremap = true , silent= true}
local keymap = vim.api.nvim_set_keymap
--make space as leader key 
keymap("" , "<space>" , "<Nop>" , opts)
vim.g.mapleader = " "
-- windiow navitation 
vim.api.nvim_set_keymap("n" , "<C-h>" , "<C-w>h" , opts) 
keymap("n" , "<C-j>" , "<C-w>j" , opts)
keymap("n" , "<C-k>" , "<C-w>k", opts)
keymap("n" , "<C-l>" , "<C-w>l", opts )
keymap("n" , "<leader>e", ":Lex 20<CR>" , opts)
-- resize window 
keymap("n" ,"<C-left>" , ":vertical resize +2<CR>" , opts)
keymap("n" , "<C-right>" , ":vertical resize -2<CR>" , opts)
keymap("n" , "<C-up>" , ":resize +2<CR>", opts)
keymap("n" , "<C-down>", ":resize -2<CR>" , opts)
--navigate between buffers 
keymap("n" , "<S-l>" , ":bn <CR>" , opts)
keymap("n" , "<S-h>" , ":bp <CR>", opts)
keymap("n" , "<leader>bb" , ":buffers <CR>" , opts)
keymap("n" , "<leader>bd" , ":bdelete <CR>" , opts )
keymap("n" , "<leader>bn", ":bn <CR>",opts)
keymap("n" , "<leader>bp", ":bn <CR>" , opts)
--insert mode 
keymap("i" ,"jk", "<Esc>" , opts)
-- visual mode  
keymap("v" ,"<" , "<gv" , opts)
keymap("v" ,">" , ">gv" , opts)

