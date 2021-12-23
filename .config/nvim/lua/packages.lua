
require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'gruvbox-community/gruvbox'

  -- IDE
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'} -- buffer management
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'williamboman/nvim-lsp-installer'
  use 'simrat39/rust-tools.nvim'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

end)

require('bufferline').setup()
