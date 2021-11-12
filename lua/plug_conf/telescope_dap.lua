require('telescope').load_extension('dap')

vim.api.nvim_set_keymap(
  'n',
  '<Leader>dd',
  ':Telescope dap commands <cr>',
  { noremap = true, silent = false })

vim.api.nvim_set_keymap(
  'n',
  '<Leader>dc',
  ':Telescope dap configurations <cr>',
  { noremap = true, silent = false })

vim.api.nvim_set_keymap(
  'n',
  '<Leader>db',
  ':Telescope dap list_breakpoints <cr>',
  { noremap = true, silent = false })

vim.api.nvim_set_keymap(
  'n',
  '<Leader>dv',
  ':Telescope dap variables <cr>',
  { noremap = true, silent = false })

vim.api.nvim_set_keymap(
  'n',
  '<Leader>df',
  ':Telescope dap frames <cr>',
  { noremap = true, silent = false })
