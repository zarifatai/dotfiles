return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require('toggleterm').setup {
            open_mapping = [[<c-\>]],
            direction = 'float',
            insert_mappings = false
        }
    end
}
