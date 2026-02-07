-- Snacks

vim.pack.add({ "https://github.com/folke/snacks.nvim" })

require("snacks").setup({
	image     = { enabled = true },
	quickfile = { enabled = true },
	lazygit   = { enabled = true },
	indent    = { enabled = true },
})
