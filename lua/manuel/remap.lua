vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Fugitive
vim.keymap.set("n", "<leader>gs", function() vim.cmd.Git() end)
vim.keymap.set("n", "<leader>p", function() vim.cmd.Git("push") end)
vim.keymap.set("n", "<leader>P", function() vim.cmd.Git("pull") end)
