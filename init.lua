--  _   _                 _
-- | \ | | ___  _____   _(_)_ __ ___
-- |  \| |/ _ \/ _ \ \ / / | '_ ` _ \
-- | |\  |  __/ (_) \ V /| | | | | | |
-- |_| \_|\___|\___/ \_/ |_|_| |_| |_|

-- Require the actual configs
require("config.options")
require("config.binds")

-- Plugins
require("plugins.catppuccin")
require("plugins.oil")
require("plugins.mini")
require("plugins.lspconfig")
require("plugins.lualine")
require("plugins.noice")
require("plugins.triforce")
require("plugins.markview")

-- LSP servers
require("lsp.gopls")
require("lsp.lua_ls")
require("lsp.marksman")
require("lsp.nixd")
require("lsp.rust_analyzer")
