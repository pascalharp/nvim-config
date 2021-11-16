-- list of all plugins
local function plugin_list()

  -- packer can manage itself =)
  use 'wbthomason/packer.nvim'

  -- lsp convenience
  use 'neovim/nvim-lspconfig'

  -- fuzzy tool for everything
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- telescope extensions
  use 'xiyaowong/telescope-emoji.nvim'
  use 'nvim-telescope/telescope-dap.nvim'

  -- proper syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- amazing rust lsp config
  use {
    'simrat39/rust-tools.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'mfussenegger/nvim-dap'}
    }
  }

  use {
    'nvim-lua/completion-nvim'
  }

  -- gruvbox (lua version), the best, the only, the real thing
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}

  -- toggle term
  use {"akinsho/toggleterm.nvim"}

  -- status line
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  use 'mhinz/vim-startify'
  use 'mhinz/vim-signify'
  use 'ntpeters/vim-better-whitespace'
  use {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  }

  use 'preservim/tagbar'
  use 'Yggdroot/indentLine'
end


-- bootstrap packer if not installed
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- let packer do its stuff
require('packer').startup(plugin_list)

-- load plugins specific configs
require('plug_conf.gruvbox')
require('plug_conf.lsp')
require('plug_conf.toggleterm')
require('plug_conf.lualine')
require('plug_conf.indentLine')

-- telescope
require('plug_conf.telescope')
-- load them after telescope
require('plug_conf.telescope_dap')
require('plug_conf.telescope_emoji')

-- other plugins
require('plug_conf.nvim-tree')
require('plug_conf.treesitter')
require('plug_conf.tagbar')
