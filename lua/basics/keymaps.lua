local function mapkey(mode, lhs, rhs)
    vim.api.nvim_set_keymap(mode, lhs, rhs, {noremap=true})
end

local function mapkey_n_v(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, {noremap=true})
    vim.api.nvim_set_keymap('v', lhs, rhs, {noremap=true})
end

local function mapcmd(key, cmd)
    vim.api.nvim_set_keymap('n', key, ':'..cmd..'<cr>', {noremap=true})
end

--[[
local function mapcmd_silent(key, cmd)
    vim.api.nvim_set_keymap('n', key, ':'..cmd..'<cr>', {noremap=true, silent=true})
end
]]--


--[[
local function maplua(key, txt)
    vim.api.nvim_set_keymap('n', key, ':lua '..txt..'<cr>', {noremap=true})
end
]]--

mapkey_n_v('j', 'h')
mapkey_n_v('i', 'k')
mapkey_n_v('k', 'j')
mapkey_n_v('J', '0')
mapkey_n_v('L', '$')
mapkey_n_v('K', '5j')
mapkey_n_v('I', '5k')
mapkey_n_v('H', 'I')
mapkey_n_v('h', 'i')

mapkey('i', ';;', '<Esc>$a;<Esc>')

-- coding scripts
mapkey('i', ';n', '<Esc>wwv/[;,)]<CR>hd:nohlsearch<CR>ha')
mapkey('n', '<LEADER>vv', 'F(bi = <Esc>F=hi')
mapkey('n', '<LEADER>vd', 'bvey:?() {<CR>:nohlsearch<CR>o ;<Esc>PF i')

mapkey('n', ';', ':')
mapkey('i', 'jk', '<Esc>:w<CR>')
mapcmd('S', 'w')
mapcmd('Q', 'q')
mapcmd('<LEADER><CR>', 'nohlsearch')

mapcmd('T', '/\\[*;)]<CR>')

-- windows split
mapcmd('si', 'set nosplitbelow<CR>:split')
mapcmd('sk', 'set splitbelow<CR>:split')
mapcmd('sj', 'set nosplitright<CR>:vsplit')
mapcmd('sl', 'set splitright<CR>:vsplit')

-- windows shift
mapkey_n_v('<LEADER>w', '<C-w>w')
mapkey_n_v('<LEADER>i', '<C-w>k')
mapkey_n_v('<LEADER>k', '<C-w>j')
mapkey_n_v('<LEADER>j', '<C-w>h')
mapkey_n_v('<LEADER>l', '<C-w>l')
