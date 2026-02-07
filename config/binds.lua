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
map('n', '<leader>lf', vim.lsp.buf.format, { desc = "Language format", silent = true })
map('n', '<leader>cs', ':Cheaty<CR>', { desc = "Open cheaty cheatsheet", silent = true })
map('n', '<leader>tp', ':Triforce profile<CR>', { desc = "Open triforce profile", silent = true })
map('n', '<leader>sp', ':StudytoolsPomodoro 25 5<CR>', { desc = "Start pomodoro session", silent = true })
map('n', '<leader>sP', ':StudytoolsPomodoroStatus<CR>', { desc = "Show pomodoro status", silent = true })
map('n', '<leader>sb', ':StudytoolsBlurt<CR>', { desc = "Open blurt buffer", silent = true })
map('n', '<leader>lg', function() Snacks.lazygit() end, { desc = "Open lazygit", silent = true })

-- Splits
map('n', 'hH',         ':tabNext<CR>', { desc = "Switch to next tab", silent = true })
map('n', 'hE',         ':tabnew<CR>', { desc = "Open new tab", silent = true })
map('n', 'hK',         vim.cmd.split, { desc = "Open horizontal split", silent = true })
map('n', 'hL',         vim.cmd.vsplit, { desc = "Open vertical split", silent = true })
map('n', '<C-Up>',     '<C-w>k')
map('n', '<C-Down>',   '<C-w>j')
map('n', '<C-Left>',   '<C-w>h')
map('n', '<C-Right>',  '<C-w>l')

-- Double-letter binds
map('n', 'tT', ':Oil<CR>', { desc = "Open oil"})
map('n', 'fF', ':Pick files<CR>', { desc = "Open mini.pick", silent = true })

-- Multicursor binds
map('n', '<A-Up>',     function() require("multicursor-nvim").lineAddCursor(-1) end)
map('n', '<A-Down>',   function() require("multicursor-nvim").lineAddCursor(1) end)
map('n', ',',          function() require("multicursor-nvim").clearCursors() end)
