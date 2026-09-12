require("snacks").setup({
    picker = {
        layout = { preset = 'default', layout = { height = 0.5 } },
        sources = {
            buffers = {
                win = {
                    input = {
                        keys = {
                            ["db"] = { 'bufdelete', mode = 'n' } },
                    }
                }
            }
        }
    },
})

vim.keymap.set('n', '<leader><space>', function() Snacks.picker.smart() end, { desc = "Smart Find Files" })
vim.keymap.set('n', '<leader>ff', function() Snacks.picker.files() end, { desc = "Find Files" })
vim.keymap.set('n', '<leader>fg', function() Snacks.picker.git_files() end, { desc = "Find Git Files" })
vim.keymap.set('n', '<leader>fb', function() Snacks.picker.buffers() end, { desc = "Buffers" })
vim.keymap.set('n', '<leader>fn', function() Snacks.picker.notifications() end, { desc = "Notification History" })
vim.keymap.set('n', '<leader>fc', function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end,
    { desc = "Find Config Files" })

-- grep
vim.keymap.set('n', '<leader>/', function() Snacks.picker.grep() end, { desc = "Grep" })
vim.keymap.set('n', '<leader>gb', function() Snacks.picker.grep_buffers() end, { desc = "Grep Open Buffers" })

-- search
vim.keymap.set('n', '<leader>sj', function() Snacks.picker.jumps() end, { desc = "Jumps" })
vim.keymap.set('n', '<leader>sk', function() Snacks.picker.keymaps() end, { desc = "Keymaps" })
vim.keymap.set('n', '<leader>sc', function() Snacks.picker.commands() end, { desc = "Commands" })
vim.keymap.set('n', '<leader>sd', function() Snacks.picker.diagnostics_buffer() end, { desc = "Buffer Diagnostics" })

-- lsp
vim.keymap.set('n', 'gd', function() Snacks.picker.lsp_definitions() end, { desc = "Goto Definitions" })
vim.keymap.set('n', 'gD', function() Snacks.picker.lsp_declarations() end, { desc = "Goto Declarations" })
vim.keymap.set('n', 'gr', function() Snacks.picker.lsp_references() end, { nowait = true, desc = "References" })
vim.keymap.set('n', '<leader>ss', function() Snacks.picker.lsp_symbols() end, { nowait = true, desc = "LSP Symbols" })
