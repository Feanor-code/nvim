vim.g.mapleader = " "
vim.opt.list = true
vim.opt.listchars = {
	space = "·",     
	tab = "» ",      
	trail = "•",     
	nbsp = "␣",     
	eol = "↲",
	extends = "❯",
	precedes = "❮",
	trail = "•"
}

vim.o.cursorline = true
vim.o.wrap = false

vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = false
vim.g.nord_enable_sidebar_background = false
vim.opt.clipboard = "unnamedplus"

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

vim.diagnostic.config({ virtual_text = true })

for k, v in pairs (options) do
	vim.opt[k] = v

end
