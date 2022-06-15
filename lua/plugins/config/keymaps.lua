local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function mapcmd(key, cmd)
    vim.api.nvim_set_keymap('n', key, ':'..cmd..'<cr>', {noremap=true})
end

--[[
local function mapcmd_silent(key, cmd)
    vim.api.nvim_set_keymap('n', key, ':'..cmd..'<cr>', {noremap=true, silent=true})
end
]]--

-- telescope
mapcmd('<Leader>ss', 'SessionSave')
mapcmd('<Leader>ls', 'SessionLoad')
mapcmd('<Leader>nf', 'DashboardNewFile')
mapcmd('<Leader>ff', 'Telescope find_files search_dirs=/home/stan hidden=true')
mapcmd('<Leader>fh', 'Telescope oldfiles')
mapcmd('<Leader>cc', 'Telescope colorscheme')
--mapcmd('<Leader>fw', 'Telescope live_grep search_dirs=/home/stan hidden=true')
mapcmd('<Leader>fw', 'Telescope live_grep')
mapcmd('<Leader>fm', 'Telescope marks')

-- nvim-tree
mapcmd('tt', 'NvimTreeToggle')

-- bufferline
mapcmd('gl', 'BufferLineCycleNext')
mapcmd('gj', 'BufferLineCyclePrev')
mapcmd('ml', 'BufferLineMoveNext')
mapcmd('mj', 'BufferLineMovePrev')
mapcmd('<Leader>cl', 'BufferLineCloseRight')
mapcmd('<Leader>cj', 'BufferLineCloseLeft')
mapcmd('<Leader>co', 'BufferLineCloseLeft<CR>:BufferLineCloseRight')
mapcmd('<C-w>', 'bdelete')

-- symbols-outline
mapcmd('ss', 'SymbolsOutline')

-- floaterm
mapcmd('<Leader>tt', 'FloatermNew')
mapcmd('rc', 'FloatermNew --autoclose=0 gcc % -o ~/code/c/out/%< && ~/code/c/out/%<<CR>')
mapcmd('rl', 'FloatermNew --autoclose=0 ./%')

-- cosmicui
map('n', '<Leader>r', '<cmd>lua require("cosmic-ui").rename()<cr>')
map('n', '<leader>ga', '<cmd>lua require("cosmic-ui").code_actions()<cr>')
map('v', '<leader>ga', '<cmd>lua require("cosmic-ui").range_code_actions()<cr>')
