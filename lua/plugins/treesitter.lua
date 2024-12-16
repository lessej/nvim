return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'lua',
        'javascript',
        'typescript',
        'rust',
        'tsx',
        'html',
        'css'
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
      },
      indent = { 
        enable = true,
        disable = {
          'ocaml'
        }
      }
    }
  end
}
