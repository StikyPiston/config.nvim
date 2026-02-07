-- Rust language server

vim.api.nvim_create_autocmd("FileType", {
	pattern = "rust",
	callback = function()
		vim.lsp.enable("rust_analyzer")
	end
})
