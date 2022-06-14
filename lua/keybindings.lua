-- here are remappings of default nvim functions
-- mappings for plugin's should be in the plugin file

vim.g.mapleader = ','
vim.api.nvim_set_keymap('n', '<A-h>', ':tabprev<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', ':tabnext<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-n>', ':tabnew<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-N>', ':tabclose<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-c>', ':q<cr>', { noremap = true, silent = false })

vim.api.nvim_set_keymap('n', '<Leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = false })
