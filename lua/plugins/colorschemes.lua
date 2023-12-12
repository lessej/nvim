return {
    {
    
        'JesseLeung97/noir.nvim',
        name = 'noir',
        lazy = false,
        config = function()
            vim.cmd([[colorscheme noir]])
        end
    },
    {
        'AlexvZyl/nordic.nvim',
        name = 'nordic',
        lazy = true,
        config = function() 
            require 'nordic' .load()
        end
    },
    {
        'shaunsingh/nord.nvim',
        name = 'nord',
        lazy = true,
        -- config = function()
        --     vim.cmd([[colorscheme nord]])
        -- end
    },
    {
        'rose-pine/neovim', 
        name = 'rose-pine',
        lazy = true,
    }
}
