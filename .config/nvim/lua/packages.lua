
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
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
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

  -- golang
  use 'ray-x/go.nvim'

end)

require('bufferline').setup()
require('go').setup()
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').gofmt() ]], false)
-- autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
