return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require('toggleterm').setup {
            open_mapping = [[<leader>\]],
            direction = 'float',
            insert_mappings = false
        }
    end
}
