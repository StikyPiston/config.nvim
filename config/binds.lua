-- Binds

local map  = vim.keymap.set
local noop = function() end

-- Unbind things
map({ "n", "v", "o" }, "<Up>",    noop)
map({ "n", "v", "o" }, "<Down>",  noop)
map({ "n", "v", "o" }, "<Left>",  noop)
map({ "n", "v", "o" }, "<Right>", noop)
map("n",               "v",       "<C-v>")

map({ "n", "v", "o" }, "h", noop)
map({ "n", "v", "o" }, "j", noop)
map({ "n", "v", "o" }, "k", noop)
map({ "n", "v", "o" }, "l", noop)
map({ "n", "v", "o" }, "i", noop)

-- Bind IJKL as movement keys
map({ "n", "v", "o" }, "i", "k")
map({ "n", "v", "o" }, "k", "j")
map({ "n", "v", "o" }, "j", "h")
map({ "n", "v", "o" }, "l", "l")

-- Bind ; to insert
map('n', ';', 'i', { desc = "Enter insert mode" })

-- Leader key binds
map('n', '<leader>w', ':w<CR>', { desc = "Write current buffer", silent = true })
map('n', '<leader>q', ':q<CR>', { desc = "Close current buffer", silent = true })
map('n', 'hH',         ':tabNext<CR>', { desc = "Switch to next tab", silent = true })
map('n', 'hE',         ':tabnew<CR>', { desc = "Open new tab", silent = true })
map('n', 'hK',         vim.cmd.split, { desc = "Open horizontal split", silent = true })
map('n', 'hL',         vim.cmd.vsplit, { desc = "Open vertical split", silent = true })
map('n', '<C-Up>',     '<C-w>k')
map('n', '<C-Down>',   '<C-w>j')
map('n', '<C-Left>',   '<C-w>h')
map('n', '<C-Right>',  '<C-w>l')
