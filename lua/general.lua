-- general configs

-- colormode
vim.o.termguicolors = true

-- show spaces and tabs etc
vim.api.nvim_set_option('listchars', 'trail:·,space:·,tab:>-,nbsp:+,eol:↴')
vim.o.list = true

-- numbers on the left
vim.o.number = true

-- dicts
vim.o.spell = true
vim.api.nvim_set_option('spelllang', 'de_de,en_us')

-- indent
vim.o.autoindent = true

-- mouse
vim.api.nvim_set_option('mouse', 'a')

-- sane completion
vim.api.nvim_set_option('completeopt', 'menu,menuone,noinsert,noselect')

-- foldcolumn
vim.api.nvim_set_option('foldcolumn', 'auto:2')
