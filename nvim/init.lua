require("config.lazy")
require("keymaps")

vim.cmd.colorscheme("catppuccin-macchiato")

-- Set global tab settings (e.g., 2 spaces for all files)
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.shiftwidth = 2 -- Number of spaces for indentation
vim.opt.tabstop = 2 -- Number of spaces that a tab counts for
vim.opt.softtabstop = 2 -- Number of spaces for tab in insert mode

-- Set specific tab settings for Python files (e.g., 4 spaces)
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.opt_local.expandtab = true -- Use spaces instead of tabs
        vim.opt_local.shiftwidth = 4 -- Number of spaces for indentation
        vim.opt_local.tabstop = 4 -- Number of spaces that a tab counts for
        vim.opt_local.softtabstop = 4 -- Number of spaces for tab in insert mode
    end
})

-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true

