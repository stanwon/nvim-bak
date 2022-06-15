vim.g.mapleader = ' '

require("basics.basics")
require("basics.keymaps")

require("plugins.plugins")

require("plugins.config.keymaps")
require("plugins.config.colorschemes")
require("plugins.config.dashboard")
require("plugins.config.telescope")
require("plugins.config.outline")
require("plugins.config.bufferline")
require("plugins.config.lualine")
require("plugins.config.nvimtree")
require("plugins.config.floaterm")
require("plugins.config.autopair")
require("plugins.config.treesitter")
require("plugins.config.scrollbar")
require("plugins.config.cosmicui")

require("plugins.config.lsp.lsp-config")
require("plugins.config.lsp.lsp-installer")
require("plugins.config.lsp.lsp-cmp")
