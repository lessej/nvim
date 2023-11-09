require('executor').setup({})

vim.keymap.set('n', '<leader>xr', vim.cmd.ExecutorRun)
vim.keymap.set('n', '<leader>xc', vim.cmd.ExecutorSetCommand)
vim.keymap.set('n', '<leader>xd', vim.cmd.ExecutorToggleDetail)
vim.keymap.set('n', '<leader>xh', vim.cmd.ExecutorShowHistory)
