return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter", branch = "main",
			"tree-sitter/tree-sitter-html",
			"latex-lsp/tree-sitter-latex",
			"tree-sitter-grammars/tree-sitter-yaml",
			"nvim-mini/mini.nvim",
			"nvim-tree/nvim-web-devicons",
			"tree-sitter-grammars/tree-sitter-markdown"
		},
		opts = {},
		config = true,
		config = function()
			require('render-markdown').setup({
				link = {
					-- Turn on / off inline link icon rendering.
					enabled = true,
					-- Additional modes to render links.
					render_modes = true,
					-- How to handle footnote links, start with a '^'.
					footnote = {
						-- Turn on / off footnote rendering.
						enabled = true,
						-- Inlined with content.
						icon = '󰯔 ',
						-- Replace value with superscript equivalent.
						superscript = true,
						-- Added before link content.
						prefix = '',
						-- Added after link content.
						suffix = '',
					},
					-- Inlined with 'image' elements.
					image = '󰥶 ',
					-- Inlined with 'email_autolink' elements.
					email = '󰀓 ',
					-- Fallback icon for 'inline_link' and 'uri_autolink' elements.
					hyperlink = '󰌹 ',
					-- Applies to the inlined icon as a fallback.
					highlight = 'RenderMarkdownLink',
					-- Applies to WikiLink elements.
					wiki = {
						icon = '󱗖 ',
						body = function()
							return nil
						end,
						highlight = 'RenderMarkdownWikiLink',
						scope_highlight = nil,
					},
					-- Define custom destination patterns so icons can quickly inform you of what a link
					-- contains. Applies to 'inline_link', 'uri_autolink', and wikilink nodes. When multiple
					-- patterns match a link the one with the longer pattern is used.
					-- The key is for healthcheck and to allow users to change its values, value type below.
					-- | pattern   | matched against the destination text                            |
					-- | icon      | gets inlined before the link text                               |
					-- | kind      | optional determines how pattern is checked                      |
					-- |           | pattern | @see :h lua-patterns, is the default if not set       |
					-- |           | suffix  | @see :h vim.endswith()                                |
					-- | priority  | optional used when multiple match, uses pattern length if empty |
					-- | highlight | optional highlight for 'icon', uses fallback highlight if empty |
					custom = {
						web = { pattern = '^http', icon = '󰖟 ' },
						apple = { pattern = 'apple%.com', icon = ' ' },
						discord = { pattern = 'discord%.com', icon = '󰙯 ' },
						github = { pattern = 'github%.com', icon = '󰊤 ' },
						gitlab = { pattern = 'gitlab%.com', icon = '󰮠 ' },
						google = { pattern = 'google%.com', icon = '󰊭 ' },
						hackernews = { pattern = 'ycombinator%.com', icon = ' ' },
						linkedin = { pattern = 'linkedin%.com', icon = '󰌻 ' },
						microsoft = { pattern = 'microsoft%.com', icon = ' ' },
						neovim = { pattern = 'neovim%.io', icon = ' ' },
						reddit = { pattern = 'reddit%.com', icon = '󰑍 ' },
						slack = { pattern = 'slack%.com', icon = '󰒱 ' },
						stackoverflow = { pattern = 'stackoverflow%.com', icon = '󰓌 ' },
						steam = { pattern = 'steampowered%.com', icon = ' ' },
						twitter = { pattern = 'x%.com', icon = ' ' },
						wikipedia = { pattern = 'wikipedia%.org', icon = '󰖬 ' },
						youtube = { pattern = 'youtube[^.]*%.com', icon = '󰗃 ' },
						youtube_short = { pattern = 'youtu%.be', icon = '󰗃 ' },
					},
				},
			})
		end
	}
}
