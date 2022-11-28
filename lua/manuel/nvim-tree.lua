vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.cmd('nnoremap <c-n> :NvimTreeToggle<CR>')

require("nvim-tree").setup()

