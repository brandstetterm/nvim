return require('packer').startup(function(use)
    --use('stevearc/dressing.nvim')
    use('wbthomason/packer.nvim')
    use('nvim-lua/plenary.nvim')
    use('nvim-telescope/telescope.nvim')
    use('wuelnerdotexe/vim-astro')
    use('christoomey/vim-tmux-navigator')
    use('ggandor/leap.nvim')
    use('nvim-pack/nvim-spectre')

    use {
      'stevearc/oil.nvim',
      opts = {},
      -- Optional dependencies
      dependencies = { "nvim-tree/nvim-web-devicons" },
    }


    -- Colorscheme
    use({'catppuccin/nvim', as = 'catppuccin'})
    use({'folke/tokyonight.nvim'})

    -- Syntax Highlighting 
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Git
    use('tpope/vim-fugitive')

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Manage LSP servers with Mason
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
end)
