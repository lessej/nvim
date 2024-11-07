return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.4',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    defaults = {
      -- mappings = {
      --     n = {
      --         ['<leader>pf'] = builtin.find_files,
      --         ['<C-p>'] = builtin.git_files,
      --         ['<leader>ps'] = function() builtin.grep_string({ search = vim.fn.input('Grep > ') }) end,
      --         ['<leader>gr'] = builtin.lsp_references,
      --         ['<leader>gi'] = builtin.lsp_implementations,
      --     },
      -- },
      layout_strategy = nil,
      layout_config = nil,
      pickers = {
        lsp_implementations = {
          layout_strategy = 'vertical',
          layout_config = {
            width = 0.9,
            height = 0.9,
            preview_cutoff = 1,
            mirror = false,
          },
        },
        lsp_references = {
          layout_strategy = 'vertical',
          layout_config = {
            width = 0.9,
            height = 0.9,
            preview_cutoff = 1,
            mirror = false,
          },
        },
      }
    }
  },
  config = function()
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input('Grep > ') })
    end)
    vim.keymap.set('n', '<leader>gr', builtin.lsp_references, {})
    vim.keymap.set('n', '<leader>gi', builtin.lsp_implementations, {})
  end
}
