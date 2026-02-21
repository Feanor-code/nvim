return {
	{
		'goolord/alpha-nvim',
		dependencies = {
			'nvim-mini/mini.icons',
			'nvim-lua/plenary.nvim'
		},
		config = function ()
			require'alpha'.setup(require'alpha.themes.theta'.config)
			local alpha = require'alpha'
			local dashboard = require'alpha.themes.dashboard'
			local ascii = require'ascii'

			dashboard.section.header.val = ascii.get_random_global()
			dashboard.section.buttons.val = {
				dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
				dashboard.button( "f", "  > Find file", ":Fzf files<CR>"),
				dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
				dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
			}
			alpha.setup(dashboard.config)
		end,
	};
}
