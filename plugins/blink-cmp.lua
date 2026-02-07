-- blink.cmp

vim.pack.add({ "saghen/blink.cmp" })

require("blink.cmp").setup({
	fuzzy = {
		implementation = "lua"
	}
})
