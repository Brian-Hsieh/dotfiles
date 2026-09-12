vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({ timeout = 50 })
    end,
})

-- vim.api.nvim_create_autocmd("ColorScheme", {
--     callback = function()
--         local palette_colors = require("kanagawa.colors").setup({ theme = 'wave' }).palette
--         vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '', bold = true })
--     end
-- })
