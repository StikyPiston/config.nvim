-- Unobtrusive-relnums

vim.pack.add({ "https://github.com/stikypiston/unobtrusive-relnums.nvim" })

require("unobtrusive-relnums").setup({
	priority = 10,
	cursor_icon = "0"
})
