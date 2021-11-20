vim.api.nvim_set_keymap(
  'n',
  '<C-p>',
  ':lua require("fine-cmdline").open()<CR>',
  {noremap = true}
)
