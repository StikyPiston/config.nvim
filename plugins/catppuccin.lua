-- Catppuccin theme

vim.pack.add({
	"https://github.com/catppuccin/nvim"
})

vim.cmd.colorscheme "catppuccin-mocha"
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "#1e2030" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "#1e2030" })
