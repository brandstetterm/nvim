local builtin = require('telescope.builtin')

-- List files
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- List files previously opened
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
-- List LSP references for word under cursor
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})

local actions = require("telescope.actions")

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },
}
