require('neogit').setup{
    console_timeout = 5000
}

vim.keymap.set('n', '<leader>gs', vim.cmd.Neogit)
