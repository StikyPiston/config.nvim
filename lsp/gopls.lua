-- Go language server

vim.api.nvim_create_autocmd("FileType", {
	pattern = "go",
	callback = function()
		vim.lsp.enable("gopls")
	end
})
