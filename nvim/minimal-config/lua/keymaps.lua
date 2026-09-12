vim.g.mapleader = " "

vim.keymap.set('i', 'jk', '<Esc>', { desc = "Exit Insert Mode" })

vim.keymap.set('n', 'n', 'nzzzv', { desc = "Next Search Result Centered" })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = "Prev Search Result Centered" })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = "Scroll Down And Centered Cursor" })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = "Scroll Up And Centered Cursor" })

vim.keymap.set('n', '<C-c>', vim.cmd.nohl, { desc = "Turn Off Highlight" })

vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y<CR>', { desc = "Yank To System Clipboard" })
vim.keymap.set({ 'n', 'v' }, '<leader>p', '"+p<CR>', { desc = "Paste From System Clipboard" })

vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d<CR>', { desc = "Delete Selected Into Void" })
vim.keymap.set('n', 'x', '"_x', { desc = "Deleted Char Into Void" })
vim.keymap.set('v', 'p', '"_dP', { desc = "Paste Without Overwriting Yank" })

vim.keymap.set('x', '<', '<gv', { desc = "Unindent And Reselect" }) -- technically we can use =
vim.keymap.set('x', '>', '>gv', { desc = "Indent And Reselect" })   -- technically we can use =

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move Selected Lines Down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move Selected Lines Up' })

vim.keymap.set('n', 'J', 'J$', { desc = 'Join Line And Move Cursor to End' })

vim.keymap.set('n', '<leader><C-l>', function()
    vim.cmd('vsplit')
    vim.cmd('wincmd l')
end, { desc = "Split Window Vertically On Right And Move Cursor" })
vim.keymap.set('n', '<leader><C-h>', function()
    vim.cmd('wincmd h')
    vim.cmd('vsplit')
end, { desc = "Split Window Vertically On Left And Move Cursor" })
vim.keymap.set('n', '<C-j>', '<CMD>wincmd j<CR>', { desc = "Move Cursor To Window Below" })
vim.keymap.set('n', '<C-k>', '<CMD>wincmd k<CR>', { desc = "Move Cursor To Window Above" })
vim.keymap.set('n', '<C-h>', '<CMD>wincmd h<CR>', { desc = "Move Cursor To Window On The Left" })
vim.keymap.set('n', '<C-l>', '<CMD>wincmd l<CR>', { desc = "Move Cursor To Window On The Right" })

vim.keymap.set('n', '<leader>x', vim.diagnostic.setloclist, { desc = "Open Diagnostic Location List" })
vim.keymap.set('n', '<leader>z', vim.diagnostic.setqflist, { desc = "Open Diagnostic Quickfix List" })

vim.keymap.set('n', '<leader>ws', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>')
