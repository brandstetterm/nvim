local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  "tsserver",
  "cssls",
  "html",
  "dockerls",
  "svelte",
  "sumneko_lua",
  "gopls"
})

local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-k>'] = cmp.mapping.select_prev_item(),
  ['<C-j>'] = cmp.mapping.select_next_item(),
  ['<C-Space>'] = cmp.mapping.complete(),
})
local cmp_sources = lsp.defaults.cmp_sources({
  --{ name = "copilot" },
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings,
  sources = cmp_sources,
})

lsp.on_attach(function(client, bufnr) 
  local opts = {buffer = bufnr, remap = false}
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "sd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prevt() end, opts)
end)

lsp.nvim_workspace()
lsp.setup()



