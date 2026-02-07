-- Which-key

vim.pack.add({ "folke/which-key.nvim" })

require("which-key").setup({
	preset = "helix",
	layout = {
		align = "right"
	}
})
