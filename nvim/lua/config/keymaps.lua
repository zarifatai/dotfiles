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
for i = 1, 5 do
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

-- Oil keymap
vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>",
               {desc = "Open parent directory"})

-- Leap keymaps
vim.keymap.set({'n', 'x', 'o'}, '<leader>s', '<Plug>(leap-forward)')
vim.keymap.set({'n', 'x', 'o'}, '<leader>S', '<Plug>(leap-backward)')
vim.keymap.set({'n', 'x', 'o'}, '<leader>gs', '<Plug>(leap-from-window)')

-- LSP config keymaps
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
