return {
	{ "neovim/nvim-lspconfig" },
	{
		"hrsh7th/nvim-cmp", 
		-- config = true,
		-- config = function()
		-- 	sources = {
		-- 		{ name = 'nerdfont' }
		-- 	}
		-- end
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = true,
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{ "neovim/nvim-lspconfig" },
	config = function()
		local lspconfig = require("lspconfig")

		-- 👇 связь cmp ↔ lsp
		local capabilities =
			require("cmp_nvim_lsp").default_capabilities()

		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})

		lspconfig.clangd.setup({
			capabilities = capabilities,
		})
	end,
}
