-- leader key is set in config/lazy.lua
-- local leader key is set in config/lazy.lua

-- Yank to system clipboard explicitly
vim.keymap.set({ "n", "v" }, "y", '"+y', { noremap = true, silent = true })
vim.keymap.set("n", "Y", '"+Y', { noremap = true, silent = true })

-- save file
vim.keymap.set({'n', 'v'}, '<C-s>', ':w<CR>', { silent = true })
vim.keymap.set('n', '<C-S-s>', ':wa<CR>', { silent = true })

-- move lines
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")

-- move in windows (if you dont wanna ues tmux via vim-tmux-navigator)
-- vim.keymap.set('n', '<C-h>', '<C-w>h')
-- vim.keymap.set('n', '<C-j>', '<C-w>j')
-- vim.keymap.set('n', '<C-k>', '<C-w>k')
-- vim.keymap.set('n', '<C-l>', '<C-w>l')

-- lsp-config
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = "Definitions" })
vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, { desc = "Actions" })

-- none-ls
vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, { desc = "Format" })

-- telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', telescope.find_files, { desc = "Files" })
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = "Files" })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = "Live Grep" })
vim.keymap.set('n', '<C-b>', telescope.buffers, { desc = "Telescope Buffer" })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = "Buffer" })
vim.keymap.set('n', '<leader>bf', telescope.buffers, { desc = "Find" })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = "Help" })

-- neo tree
vim.keymap.set('n', '<leader>e', ':Neotree toggle filesystem reveal left<CR>', { desc = "Filesystem" })

-- barbar
vim.keymap.set('n', '<S-l>', ':BufferNext<CR>')
vim.keymap.set('n', '<S-h>', ':BufferPrevious<CR>')
vim.keymap.set('n', '<leader>bn', ':BufferNext<CR>', { desc = "Next" })
vim.keymap.set('n', '<leader>bp', ':BufferPrevious<CR>', { desc = "Previous" })
vim.keymap.set('n', '<leader>bd', ':BufferClose<CR>', { desc = "Delete" })

-- noice
local noice = require("noice")
vim.keymap.set('n', '<leader>nd', function()
  noice.cmd("dismiss")
end, { desc = "Dismiss" })
vim.keymap.set('n', '<leader>nh', ':Noice pick<CR>', { desc = "History" })
