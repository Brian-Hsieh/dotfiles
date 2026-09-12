vim.pack.add({
    { src = 'https://github.com/stevearc/oil.nvim.git' },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/mason-org/mason.nvim.git' },
    { src = 'https://github.com/mason-org/mason-lspconfig.nvim.git' },
    { src = 'https://github.com/folke/snacks.nvim.git' },
    { src = 'https://github.com/rebelot/kanagawa.nvim.git' },
    { src = 'https://github.com/lewis6991/gitsigns.nvim.git' },
})

--
-- Mason
--
require("mason").setup()
vim.keymap.set('n', '<leader>m', '<CMD>Mason<CR>', { desc = "Open Mason" })

--
-- Mason lspconfig
--
require("mason-lspconfig").setup()

--
-- Lspconfig
--
require("config.nvim-lsp") -- enable lsp server
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = "Format With Lsp Client" })

--
-- Oil
--
require("oil").setup({
    win_options = { signcolumn = 'yes' },
    view_options = { show_hidden = true },
})
vim.keymap.set('n', '<leader>o', '<CMD>Oil<CR>', { desc = "Open Parent Directory" })

--
-- Snacks
--
require("config.snacks")

--
-- Colorscheme
--
require("config.colorscheme")

--
-- Git
--
require("config.gitsigns")
