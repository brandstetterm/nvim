return require('packer').startup(function()
  use('wbthomason/packer.nvim')
  use({'catppuccin/nvim', as = 'catppuccin'})
  use({'feline-nvim/feline.nvim', branch = '0.5-compat'})
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use({'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}})
  use('tpope/vim-fugitive')
  use('nvim-lua/plenary.nvim')
  use('nvim-telescope/telescope.nvim')
  use({'neovim/nvim-lspconfig', requires = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim'
  }})
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')
end)
