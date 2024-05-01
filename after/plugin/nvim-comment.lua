require('nvim_comment').setup({
    operator_mapping = '<leader>c',
    line_mapping = '<leader>cl'
})

vim.api.nvim_create_autocmd('Filetype', {
    pattern = { 'terraform' },
    command = 'setlocal commentstring=#%s'
})
