require('toggleterm').setup({})

-- Alt/option + t
vim.keymap.set('n', '†', vim.cmd.ToggleTerm)
vim.keymap.set('t', '†', vim.cmd.ToggleTerm)
