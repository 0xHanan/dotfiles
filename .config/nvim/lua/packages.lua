
require('packer').startup({function()
  use 'wbthomason/packer.nvim'
  use 'gruvbox-community/gruvbox'
  -- tpope
  use "tpope/vim-surround"
  use "tpope/vim-fugitive"

  -- IDE
  use { -- buffer management
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
  }

  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use {
    'williamboman/nvim-lsp-installer',
    }

  use 'simrat39/rust-tools.nvim'

  -- Autocompletion plugin
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      use 'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
      use 'hrsh7th/cmp-buffer',
      use 'hrsh7th/cmp-path',
      use 'hrsh7th/cmp-cmdline',
      use 'hrsh7th/cmp-vsnip',
      use 'hrsh7th/vim-vsnip'
    },
    config = function ()
      require "myconf/completion"
    end
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('myconf/treesitter')
    end
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    config = function ()
      require "myconf/statusline"
    end,
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- golang
  use 'ray-x/go.nvim'

end,
  config = {
    display = {
      open_fn = require('packer.util').float,
    }
  }})
