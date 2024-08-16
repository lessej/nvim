# Neovim Config

## Package Manager
[lazy.nvim](https://github.com/folke/lazy.nvim)

## Plugins
**[harpoon](https://github.com/ThePrimeagen/harpoon)** - Quickly jump between working files
- `<leader>a'` add file to quick jump list
- `<C-e>` toggle quick jump list
- `<C-u>` jumtp to file 1
- `<C-i>` jumtp to file 2
- `<C-o>` jumtp to file 3
- `<C-p>` jumtp to file 4

**[lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)** - Boilerplate LSP setup with autocompletion
- Autocompletion mappings:
    - `<C-p>` select previous item in autocompletion list
    - `<C-n>` select next item in autocompletion list
    - `<C-y>` confirm selection
    - `<C-Space>` complete selection
- Rust tools:
    - `<leader>ca` rust tools hover actions
    
**[lualine](https://github.com/nvim-lualine/lualine.nvim)** - Bottom status bar

**[nvim-comment](https://github.com/terrortylor/nvim-comment)** - Toggle comments for selected lines
- `<leader>cl` toggle comment selected lines

**[rust-tools](https://github.com/simrat39/rust-tools.nvim)** - Rust related tools bundled for easy use

**[telescope](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finding
- `<leader>pf` search by filename within project directory
- `<leader>ps` search for keywords within project (Grep >)
- `<leader>pg` search by filename within git files
- `<leader>gr` go to references
- `<leader>gi` go to implementations

**[treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Syntax highlighting

**[treesitter-playground](https://github.com/nvim-treesitter/playground)** - See what's going on with treesitter behind the scenes

**[undotree](https://github.com/mbbill/undotree)** - Undo history visualizer
- `<leader>u` open undotree

**[vim-go](https://github.com/fatih/vim-go)** - Go related tools bundled for easy use


## Keymaps
- Normal mode:
    - `<leader>du` open netrw
    - `J` move line below to current line without moving the cursor
    - `<C-d>` move down half a page without moving the cursor
    - `<C-S-d>` move up half a page without moving the cursor
    - `<leader>y` copy into the system buffer 
    - `<leader>p` avoid overwriting the buffer when pasting
    - `<leader>er` open diagnostic in floating window
    - `<C-k>` next quickfix
    - `<C-j>` previous quickfix
    - `<leader>s` replace all instances of word in file
    - `<leader>x` make file executable
- Visual mode:
    - `J` move highlighted line down
    - `K` move highlighted line up
    - `<leader>Y` copy into the system buffer


## Colorschemes

**[nordic](https://github.com/AlexvZyl/nordic.nvim)** Warmer Nord

**[nord](https://github.com/shaunsingh/nord.nvim)** Colder Nord

**[rose-pine](https://github.com/rose-pine/neovim)** Soho vibes


