return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        { 'neovim/nvim-lspconfig' },
        {
            'williamboman/mason.nvim',
            build = function()
                pcall(vim.cmd, 'MasonUpdate')
            end
        },
        { 'williamboman/mason-lspconfig.nvim' },
        { 'hrsh7th/nvim-cmp' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'L3MON4D3/LuaSnip' }
    },
    config = function()
        local lsp = require('lsp-zero')

        lsp.preset({})

        local cmp = require('cmp')
        local cmp_action = require('lsp-zero').cmp_action()
        cmp.setup({
            mapping = {
                ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
                ['<CR>'] = cmp.mapping.confirm({select = false}),
                ['<Tab>'] = cmp.mapping.select_next_item(cmp.select)
            }
        })

        lsp.on_attach(function(client, bufnr)
            lsp.default_keymaps({ buffer = bufnr })
        end)

        -- Typescript
        require('lspconfig').tsserver.setup({
            on_attach = function(client, bufnr)
                client.server_capabilities.documentFormattingProvider = false
                client.server_capabilities.documentRangeFormattingProvider = false
            end,
            filetypes = { 
                'javascript',
                'javascriptreact',
                'javascript.jsx',
                'typescript',
                'typescriptreact',
                'typescript.tsx'
            },
            cmd = { 'typescript-language-server', '--stdio' },
        })

        lsp.setup()
    end
}
