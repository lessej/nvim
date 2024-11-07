return {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  opts = {
    options = {
      section_separators = '', 
      component_separators = '',
      icons_enabled = false
    },
    sections = {
      lualine_b = {{
        'branch', 
        'diff', 
        'diagnostics',
        color = { fg = "#0c0b0a", bg = "#a0a4a8" }
      }},
      lualine_c = {{
        'filename',
        path = 1,
        color = { bg = "#0c0b0a", fg = "#a0a4a8" }
      }},
      lualine_x = {{
        'encoding', 
        'fileformat', 
        'filetype',
        color = { bg = "#0c0b0a", fg = "#a0a4a8" }
      }},
      lualine_y = {{
        'progress',
        color = { fg = "#0c0b0a", bg = "#a0a4a8" }
      }}
    }
  }
}
