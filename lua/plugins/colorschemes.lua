return {
  {
    'aktersnurra/no-clown-fiesta.nvim',
    name = 'no-clown-fiesta',
    lazy = false,
    config = function()
      vim.cmd([[colorscheme no-clown-fiesta]])
    end
  },
  -- {
  --   'git@github.com:JesseLeung97/noir.nvim.git',
  --   name = 'noir',
  --   lazy = true,
  --   config = function()
  --     -- vim.cmd([[colorscheme noir]])
  --     -- vim.api.nvim_set_hl(0, 'StatusLine', { fg = "#0c0b0a", bg = "#0c0b0a" })
  --   end
  -- },
  {
    'AlexvZyl/nordic.nvim',
    name = 'nordic',
    lazy = true,
    config = function()
      require('nordic').load()
    end
  },
  {
    'shaunsingh/nord.nvim',
    name = 'nord',
    lazy = true,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = true,
  }
}

