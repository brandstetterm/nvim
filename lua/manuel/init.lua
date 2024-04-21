vim.keymap.set('n', '<Space>', '<Nop>', {})
vim.g.mapleader = " "

--require('manuel.nvim-tree')
require('manuel.packer')
require('manuel.lsp')
require('manuel.telescope')
require('manuel.treesitter')
require('manuel.lualine')
require('manuel.remap')
require('manuel.spectre')
require('manuel.catppuccin')
require('manuel.leap')
require('manuel.options')
require('manuel.neogit')

