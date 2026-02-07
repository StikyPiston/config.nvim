-- Nix language server

vim.api.nvim_create_autocmd("FileType", {
	pattern = "nix",
	callback = function()
		vim.lsp.enable("nixd")
	end
})
