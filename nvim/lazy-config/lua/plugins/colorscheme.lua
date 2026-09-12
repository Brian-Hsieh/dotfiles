return {
	{
		"bluz71/vim-moonfly-colors",
		enabled = false,
		name = "moonfly",
		lazy = false,
		priority = 1000,
		init = function()
			vim.g.moonflyTransparent = true
			vim.g.moonflyTerminalColors = false
		end,
	},
	{
		"AlexvZyl/nordic.nvim",
		enabled = false,
		lazy = false,
		priority = 1000,
		opts = {
			bright_border = true,
			telescope = {
				style = "classic",
			},
		},
		config = function(_, opts)
			require("nordic").load(opts)
		end,
	},
	{
		"rmehri01/onenord.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local onenord = require("onenord")
			local colors = require("onenord.colors").load()

			local light_gray = "#919bb0"
			local dark_gray = "#2a2f3a"
			local position_hightlight = "#494E5B"

			onenord.setup({
				theme = "dark",
				-- fade_nc = true,
				disable = {
					background = true,
					float_background = true,
				},
				custom_highlights = {

					-- Editor
					CursorLine = {
						bg = position_hightlight,
					},
					Visual = {
						bg = position_hightlight,
					},
					VisualNOS = {
						bg = position_hightlight,
					},
					-- FloatBorder = { fg = colors.fg },

					-- Dashboard
					DashboardHeader = {
						fg = "#f3adbc",
					},
					DashboardFooter = {
						fg = colors.orange,
					},

					-- Telescope
					TelescopeResultsBorder = {
						fg = colors.fg,
					},
					TelescopePromptBorder = {
						fg = colors.fg,
					},
					TelescopePreviewBorder = {
						fg = colors.fg,
					},

					-- nvim-treesitter-context
					-- TreesitterContext = {
					-- 	bg = position_hightlight,
					-- },

					-- NeoTree
					--
					-- WhichKey
					WhichKeyDesc = {
						fg = light_gray,
					},
					WhichKeyFloat = {
						bg = dark_gray,
					},
				},
				custom_colors = {},
			})
		end,
	},
}
