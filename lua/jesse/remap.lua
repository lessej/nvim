vim.g.mapleader = ' '

-- Open netrw
vim.keymap.set('n', '<leader>du', vim.cmd.Explore)

-- Move highlighted lines up and down
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

-- Keep cursor in place
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-S-d>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Avoid overwriting buffer when pasting
vim.keymap.set('x', '<leader>p', '\"_dp')
vim.keymap.set('n', '<leader>d', '\"_d')
vim.keymap.set('v', '<leader>d', '\"_d')

-- Allow copy and paste into system buffer
vim.keymap.set('n', '<leader>y', '\"+y')
vim.keymap.set('v', '<leader>y', '\"+y')
vim.keymap.set('v', '<leader>Y', '\"+Y')

-- Open error diagnostic in popup window
vim.keymap.set('n', '<leader>er', '<cmd> lua vim.diagnostic.open_float() <CR>')

-- Quickfix menu
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

-- Replace word
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make file executable
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

-- Window navigation
vim.keymap.set('n', '<leader>vs', '<cmd>vsplit<CR><C-w>l', { silent = true })
vim.keymap.set('n', '<leader>hs', '<cmd>split<CR><C-w>j', { silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')

-- In terminal insert mode, change to terminal normal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n><C-w>h', { silent = true })
