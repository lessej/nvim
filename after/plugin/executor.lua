require('executor').setup({})

vim.keymap.set('n', '<leader>xr', ':ExecutorRun<CR>')
vim.keymap.set('n', '<leader>xd', ':ExecutorToggleDetail<CR>')
vim.keymap.set('n', '<leader>xh', ':ExecutorShowHistory<CR>')
