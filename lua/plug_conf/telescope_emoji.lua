require("telescope").load_extension("emoji")

vim.api.nvim_set_keymap(
  'n',
  '<Leader>e',
  ':Telescope emoji <cr>',
  { noremap = true, silent = true })
