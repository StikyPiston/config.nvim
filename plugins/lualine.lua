-- Lualine

vim.pack.add({ "https://github.com/nvim-lualine/lualine.nvim" })

require("lualine").setup({
	options = {
		section_separators   = { right = "", left = "" },
		compenent_separators = { right = "", left = "" }
	},

	sections = {
		lualine_a = { "mode" },
		lualine_b = { "filename" },
		lualine_c = {},
		lualine_x = { "filetype", "location", "diff" },
		lualine_y = { "lsp_status", "diagnostics" },
		lualine_z = {}
	}
})
