-- basics
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')
vim.opt.number          = true
vim.opt.wrap            = true
vim.opt.relativenumber  = true
vim.opt.shiftround      = true
vim.opt.cursorline      = true
vim.opt.mouse           = 'a'
vim.opt.termguicolors   = true
vim.opt.ignorecase      = true
vim.opt.list            = true
vim.opt.scrolloff       = 5
vim.opt.colorcolumn     = "120"

-- tabs
vim.opt.autoindent      = true
vim.opt.smartcase       = true
vim.opt.expandtab       = true
vim.opt.tabstop         = 2
vim.opt.shiftwidth      = 2
vim.opt.softtabstop     = 2

-- disable some useless standard plugins to save startup time
-- these features have been better covered by plugins
vim.g.loaded_matchparen        = 1
vim.g.loaded_matchit           = 1
vim.g.loaded_logiPat           = 1
vim.g.loaded_rrhelper          = 1
vim.g.loaded_tarPlugin         = 1
vim.g.loaded_gzip              = 1
vim.g.loaded_zipPlugin         = 1
vim.g.loaded_2html_plugin      = 1
vim.g.loaded_shada_plugin      = 1
vim.g.loaded_spellfile_plugin  = 1
vim.g.loaded_netrw             = 1
vim.g.loaded_netrwPlugin       = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_remote_plugins    = 1
