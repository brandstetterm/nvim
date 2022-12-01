return require('packer').startup(function()
  use('wbthomason/packer.nvim')
  use({'catppuccin/nvim', as = 'catppuccin'})
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use({'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}})
  use('tpope/vim-fugitive')
  use('nvim-lua/plenary.nvim')
  use('nvim-telescope/telescope.nvim')
  use('neovim/nvim-lspconfig')
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')
end)
