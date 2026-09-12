-- https://github.com/rebelot/kanagawa.nvim.git
-- https://github.com/tiagovla/tokyodark.nvim.git (need to change hi color)

local palette_colors = require("kanagawa.colors").setup({ theme = 'wave' }).palette
require("kanagawa").setup({
    colors = {
        palette = {
            sumiInk0 = '#1a1a22', -- to be changed
            sumiInk3 = '#1a1a22',
        },
        theme = {
            wave = {
                ui = {
                    bg_visual = palette_colors.waveBlue2,
                    bg_gutter = 'none'
                }
            }
        }
    },
    overrides = function(colors)
        local theme = colors.theme
        return {
            -- SnacksPickerInput         = { bg = theme.ui.bg_p1},
            -- SnacksPickerInputBorder   = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },

            SnacksPickerList          = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
            SnacksPickerBoxBorder     = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },

            SnacksPickerPreview       = { bg = theme.ui.bg_dim },
            SnacksPickerPreviewBorder = { fg = theme.ui.bg_dim, bg = theme.ui.bg_dim },

            CursorLineNr              = { fg = '#00ff00' },
            CursorLine                = { bg = theme.ui.bg },
        }
    end
})

vim.cmd("colorscheme kanagawa")
