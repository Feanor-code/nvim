require("config.lazy")

vim.o.cursorline = true
vim.o.wrap = false

vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = false
vim.g.nord_enable_sidebar_background = false

vim.cmd[[set autoread ]]
vim.cmd [[colorscheme nord]]
vim.cmd [[ :hi winseparator guifg=#242933 ]]
vim.cmd [[ highlight lspfloatwinborder guifg=#242933 ]]

local options = {
    mouse = "a",
    number = true,
    relativenumber = true,
    smarttab = true,
    tabstop = 4,
    shiftwidth = 4,
    softtabstop = 4,
    autoindent = true
}

vim.lsp.enable("clangd")
vim.diagnostic.config({ virtual_text = true })

vim.keymap.set({ "n", "v" }, "y", "\"+y")
vim.keymap.set({ "n", "v" }, "p", "\"+p")
vim.keymap.set("n", "ai", ":Sidekick cli show name=qwen<CR>")
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- сделать окно больше по вертикали
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- сделать окно меньше по вертикали
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- сделать окно больше по горизонтали, нажав shift и =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- сделать окно меньше по горизонтали, нажав shift и -
vim.keymap.set("v", "<C-y>", function() require("nvim-silicon").clip() end, { noremap = true, silent = true })

for k, v in pairs (options) do
    vim.opt[k] = v

end

