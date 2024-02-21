require('toggleterm').setup({})

vim.keymap.set('n', '<C-y>', vim.cmd.ToggleTerm)
vim.keymap.set('t', '<C-y>', vim.cmd.ToggleTerm)
