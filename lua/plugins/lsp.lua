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
	{ "neovim/nvim-lspconfig" }
}
