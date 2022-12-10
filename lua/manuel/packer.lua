return require('packer').startup(function()
  use('wbthomason/packer.nvim')
  use('nvim-lua/plenary.nvim')
  use('nvim-telescope/telescope.nvim')

  -- GitHub Copilot
  use({
    "zbirenbaum/copilot.lua",
    event = "VimEnter",
    config = function()
      vim.defer_fn(function()
        require("copilot").setup({
          suggestion = {
            auto_trigger = true
          }
        })
      end, 100)
    end,
  })
  --use {
    --"zbirenbaum/copilot-cmp",
    --after = { "copilot.lua" },
    --config = function ()
      --require("copilot_cmp").setup()
    --end
  --}

  -- Colorscheme
  use({'catppuccin/nvim', as = 'catppuccin'})

  -- Syntax Highlighting 
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- File tree
  use({'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}})

  -- Git
  use('tpope/vim-fugitive')

  -- LSP
  use("VonHeikemen/lsp-zero.nvim")
  use('neovim/nvim-lspconfig')
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')

  -- Autocomplete
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use('saadparwaiz1/cmp_luasnip')
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-nvim-lua")

  -- Snippets
  use('L3MON4D3/LuaSnip')
  use("rafamadriz/friendly-snippets")
end)
