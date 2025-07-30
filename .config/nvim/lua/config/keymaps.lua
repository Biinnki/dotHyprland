-- leader key is set in config/lazy.lua
-- local leader key is set in config/lazy.lua

-- Yank to system clipboard explicitly
vim.keymap.set({ "n", "v" }, "y", '"+y', { noremap = true, silent = true })
vim.keymap.set("n", "Y", '"+Y', { noremap = true, silent = true })

-- Change buffer for print
vim.keymap.set({ 'n', 'v' }, 'p', '"+p', { noremap = true, silent = true })
vim.keymap.set('n', 'P', '"+P', { noremap = true, silent = true })

-- save file
vim.keymap.set({'n', 'v'}, '<C-s>', ':w<CR>', { silent = true })
vim.keymap.set('n', '<C-S-s>', ':wa<CR>', { silent = true })

-- move lines
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { silent = true })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { silent = true })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { silent = true })

-- move in windows (if you dont wanna ues tmux via vim-tmux-navigator)
-- vim.keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
-- vim.keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
-- vim.keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
-- vim.keymap.set('n', '<C-l>', '<C-w>l', { silent = true })

-- lsp-config
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = "Definitions", silent = true })
vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, { desc = "Actions", silent = true })

-- none-ls
vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, { desc = "Format", silent = true })

-- telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', telescope.find_files, { desc = "Files", silent = true })
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = "Files", silent = true })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = "Live Grep", silent = true })
vim.keymap.set('n', '<C-b>', telescope.buffers, { desc = "Telescope Buffer", silent = true })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = "Buffer", silent = true })
vim.keymap.set('n', '<leader>bf', telescope.buffers, { desc = "Find", silent = true })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = "Help", silent = true })

-- for tmux-sessionizer
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww ~/.local/bin/tmux/plugins/tmux-sessionizer/./tmux-sessionizer<CR>', { silent = true })

-- neo tree
vim.keymap.set('n', '<leader>e', ':Neotree toggle filesystem reveal left<CR>', { desc = "Filesystem", silent = true })

-- barbar
vim.keymap.set('n', '<S-l>', ':BufferNext<CR>', { silent = true })
vim.keymap.set('n', '<S-h>', ':BufferPrevious<CR>', { silent = true })
vim.keymap.set('n', '<leader>bn', ':BufferNext<CR>', { desc = "Next", silent = true })
vim.keymap.set('n', '<leader>bp', ':BufferPrevious<CR>', { desc = "Previous", silent = true })
vim.keymap.set('n', '<leader>bd', ':BufferClose<CR>', { desc = "Delete", silent = true })

-- noice
local noice = require("noice")
vim.keymap.set('n', '<leader>nd', function()
  noice.cmd("dismiss")
end, { desc = "Dismiss", silent = true })
vim.keymap.set('n', '<leader>nh', ':Noice pick<CR>', { desc = "History", silent = true })
