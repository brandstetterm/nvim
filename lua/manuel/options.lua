vim.opt.encoding = 'utf-8'
vim.opt.swapfile = false

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.compatible = false

vim.opt.clipboard = 'unnamedplus'
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.scrolloff = 3

vim.bo.undofile = true

vim.opt.splitright = true
vim.opt.splitbelow = true

--vim.cmd.colorscheme 'catppuccin-macchiato'
--vim.cmd.colorscheme 'catppuccin-latte'
vim.cmd[[colorscheme catppuccin]]
vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })

--vim.cmd[[colorscheme tokyonight-moon]]
vim.opt.cursorline = true

vim.g.astro_typescript = 'enable'
vim.g.astro_styles = 'enable'
