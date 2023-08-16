require('neogit').setup{
    -- kind = 'floating',
    -- popup = {
    --     kind = 'floating'
    -- },
    -- commit_popup = {
    --     kind = 'floating'
    -- },
    -- preview_buffer = {
    --     kind = 'floating'
    -- },
    console_timeout = 5000
}
vim.keymap.set('n', '<leader>gs', vim.cmd.Neogit)
