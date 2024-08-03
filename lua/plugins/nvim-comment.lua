return {
    'terrortylor/nvim-comment',
    opts = {
        operator_mapping = '<leader>c',
        line_mapping = '<leader>cl'
    },
    config = function()
        vim.api.nvim_create_autocmd('Filetype', {
            pattern = { 'terraform' },
            command = 'setlocal commentstring=#%s'
        })
    end
}
