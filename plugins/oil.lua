-- Oil

vim.pack.add({ "https://github.com/stevearc/oil.nvim" })

require("oil").setup()

vim.keymap.set("n", "tT", ':Oil<CR>', { desc = "Oil File Browser" })
