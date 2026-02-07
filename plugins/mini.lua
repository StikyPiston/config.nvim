-- mini

vim.pack.add({ "https://github.com/nvim-mini/mini.nvim" })

require("mini.icons").setup()
require("mini.surround").setup()
require("mini.clue").setup({
	triggers = {
		{ mode = { 'n', 'x' }, keys = '<Leader>' },
		{ mode = { 'n', 'x' }, keys = 'h' },
		{ mode = { 'n', 'x' }, keys = 'g' },
		{ mode = { 'n', 'x' }, keys = "'" },
		{ mode = { 'n', 'x' }, keys = '`' },
		{ mode = { 'n', 'x' }, keys = 'z' },
		{ mode = { 'n', 'x' }, keys = 'd' }
	}
})
