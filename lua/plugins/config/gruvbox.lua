vim.cmd([[colorscheme gruvbox]])
vim.t.is_transparent = 1
vim.opt.background = "dark" -- or "light" for light mode
vim.api.nvim_set_hl(0, "Normal", {guibg = NONE; ctermbg = NONE})

function toggle_transparent()
    if vim.t.is_transparent == 0 then
        vim.api.nvim_set_hl(0, "Normal", {guibg = NONE; ctermbg = NONE})
        vim.t.is_transparent = 1
    else
        vim.opt.background = "dark"
        vim.t.is_transparent = 0
    end
end

vim.keymap.set("n", "<F2>", toggle_transparent, opts)
