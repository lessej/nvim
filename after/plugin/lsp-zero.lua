local lsp = require('lsp-zero')

lsp.preset({})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp.select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
})

local cmp_action = require('lsp-zero').cmp_action()
cmp.setup({
    mapping = {
        ['<Tab>'] = cmp_action.tab_complete(),
        ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
        ['<CR>'] = cmp.mapping.confirm({select = false}),
        ['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
    }
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

-- Rust
local rust_tools = require('rust-tools')
rust_tools.setup({
    server = {
        on_attach = function(_, bufnr)
            vim.keymap.set('n', '<leader>ca', rust_tools.hover_actions.hover_actions, {buffer = bufnr})
            vim.keymap.set('n', '<leader>doc', vim.cmd.RustOpenExternalDocs)
        end
    }
})

-- Go
require('lspconfig').gopls.setup({})

-- Typescript
require('lspconfig').tsserver.setup({
    on_attach = function(client, bufnr)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
        ts_utils.setup({})
        ts_utils.setup_client(client)
    end,
    filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx' },
    cmd = { 'typescript-language-server', '--stdio' },
})

lsp.setup()
