require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    path_display = {},
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}

-- keyboard settings
vim.g.mapleader = ','
vim.api.nvim_set_keymap(
  'n',
  '<Leader>ff',
  ':lua require\'telescope.builtin\'.find_files{} <cr>',
  { noremap = true, silent = false })

vim.api.nvim_set_keymap(
  'n',
  '<Leader>fg',
  ':lua require\'telescope.builtin\'.git_files{} <cr>',
  { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  'n',
  '<Leader>gg',
  ':lua require\'telescope.builtin\'.live_grep{} <cr>',
  { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  'n',
  '<Leader>fb',
  ':lua require\'telescope.builtin\'.file_browser{} <cr>',
  { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  'n',
  '<Leader>lr',
  ':lua require\'telescope.builtin\'.lsp_references{} <cr>',
  { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  'n',
  '<Leader>ld',
  ':lua require\'telescope.builtin\'.lsp_definitions{} <cr>',
  { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  'n',
  '<Leader>la',
  ':lua require\'telescope.builtin\'.lsp_code_actions{} <cr>',
  { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  'n',
  '<Leader>t',
  ':lua require\'telescope.builtin\'.builtin{} <cr>',
  { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  'n',
  '<Leader>j',
  ':lua require\'telescope.builtin\'.jumplist{} <cr>',
  { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  'n',
  '<Leader>b',
  ':lua require\'telescope.builtin\'.buffers{} <cr>',
  { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  'n',
  '<Leader>F',
  ':lua require\'telescope.builtin\'.current_buffer_fuzzy_find{} <cr>',
  { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  'n',
  '<Leader>d',
  ':lua require\'telescope.builtin\'.lsp_document_diagnostics{} <cr>',
  { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  'n',
  '<Leader>D',
  ':lua require\'telescope.builtin\'.lsp_workspace_diagnostics{} <cr>',
  { noremap = true, silent = true })
