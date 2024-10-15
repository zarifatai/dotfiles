return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    lazy = false,
    init = function()
        -- Set options before loading the plugin
        vim.opt.termguicolors = true
    end,
    config = function()
        require("bufferline").setup {
            highlights = require("catppuccin.groups.integrations.bufferline").get(),
            options = {
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        separator = true -- use "true" for default, or set your own character
                    }
                },
                diagnostics = "nvim_lsp",
                separator_style = "slant",
                numbers = function(opts)
                    return string.format('%s', opts.raise(opts.ordinal))
                end
            }
        }
    end
}
