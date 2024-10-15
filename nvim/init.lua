require("config.lazy")

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

-- Remap window navigation to Ctrl + h, j, k, l
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true, silent = true})

-- Telescope keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files,
               {desc = 'Telescope find files'})
vim.keymap.set('n', '<leader>fg', builtin.live_grep,
               {desc = 'Telescope live grep'})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = 'Telescope buffers'})
vim.keymap.set('n', '<leader>fh', builtin.help_tags,
               {desc = 'Telescope help tags'})

-- Close the current buffer with <leader>X
vim.keymap
    .set('n', '<leader>x', ':bdelete<CR>', {desc = 'Close current buffer'})

-- Create a new buffer with <leader>n
vim.keymap.set('n', '<leader>n', ':enew<CR>', {desc = 'Create a new buffer'})

-- Split window in different directions using <leader> + h/j/k/l
vim.keymap.set('n', '<leader>h', ':split<CR><C-w>h',
               {desc = 'Create a new buffer (left)'})
vim.keymap.set('n', '<leader>j', ':split<CR><C-w>j',
               {desc = 'Create a new buffer (down)'})
vim.keymap.set('n', '<leader>k', ':split<CR><C-w>k',
               {desc = 'Create a new buffer (up)'})
vim.keymap.set('n', '<leader>l', ':vsplit<CR><C-w>l',
               {desc = 'Create a new buffer (right)'})

-- Bufferline keymaps
for i = 1, 9 do
    vim.keymap.set('n', '<leader>' .. i,
                   ':BufferLineGoToBuffer ' .. i .. '<CR>',
                   {desc = 'Go to buffer ' .. i .. ''})
end

-- File explorer keymap
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>',
               {desc = 'Open File Explorer'})

-- Tmux-Vim navigation
vim.keymap.set('n', '<C-h>', '<cmd> TmuxNavigateLeft<CR>')
vim.keymap.set('n', '<C-j>', '<cmd> TmuxNavigateDown<CR>')
vim.keymap.set('n', '<C-k>', '<cmd> TmuxNavigateUp<CR>')
vim.keymap.set('n', '<C-l>', '<cmd> TmuxNavigateRight<CR>')
vim.keymap.set('n', '<C-\\>', '<cmd> TmuxNavigatePrevious<CR>')

-- Oil keymap
vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>",
               {desc = "Open parent directory"})
