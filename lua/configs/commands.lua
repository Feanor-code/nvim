vim.cmd [[ set autoread ]]
vim.cmd [[ colorscheme nord]]
vim.cmd [[ :hi winseparator guifg=#242933 ]]
vim.cmd [[ highlight lspfloatwinborder guifg=#242933 ]]
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#242933" })
-- main fzf window border
vim.api.nvim_set_hl(0, "FzfLuaBorder", { fg = "#242933", bg = "NONE" })

-- preview window border (если используешь превью)
vim.api.nvim_set_hl(0, "FzfLuaPreviewBorder", { fg = "#242933", bg = "NONE" })

-- если хочешь, чтобы фон самого окна совпадал
vim.api.nvim_set_hl(0, "FzfLuaNormal", { bg = "#242933" })
