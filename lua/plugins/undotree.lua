return {
	'mbbill/undotree',
    config = function()
        -- Focus when opening
        vim.g.undotree_SetFocusWhenToggle = 1

        vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
    end
}
