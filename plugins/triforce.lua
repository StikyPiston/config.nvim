-- Triforce

vim.pack.add({ "https://github.com/gisketch/triforce.nvim", "https://github.com/nvzone/volt" })

require("triforce").setup()

require("lualine").setup({
	options = {
		section_separators   = { right = "", left = "" },
		compenent_separators = { right = "", left = "" }
	},

	sections = {
		lualine_x = { require("triforce.lualine").level, "filetype", "location", "diff" },
	}
})
