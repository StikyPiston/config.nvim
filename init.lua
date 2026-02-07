--  _   _                 _
-- | \ | | ___  _____   _(_)_ __ ___
-- |  \| |/ _ \/ _ \ \ / / | '_ ` _ \
-- | |\  |  __/ (_) \ V /| | | | | | |
-- |_| \_|\___|\___/ \_/ |_|_| |_| |_|

-- Require the actual configs
require("config.options")
require("config.binds")
require("config.diagnostics")

-- Plugins
require("plugins.catppuccin")
require("plugins.oil")
require("plugins.mini")
require("plugins.lspconfig")
require("plugins.lualine")
require("plugins.noice")
require("plugins.triforce")
require("plugins.markview")
require("plugins.nvim-highlight-colors")
require("plugins.blink-cmp")
require("plugins.unobtrusive-relnums")
require("plugins.cheaty")
require("plugins.barbar")
require("plugins.lazydev")
require("plugins.gitsigns")
require("plugins.autoclose")
require("plugins.studytools")
require("plugins.snacks")
require("plugins.multicursor")
require("plugins.trouble")

-- LSP servers
require("lsp.gopls")
require("lsp.lua_ls")
require("lsp.marksman")
require("lsp.nixd")
require("lsp.rust_analyzer")
