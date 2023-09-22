local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.set_sign_icons({
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I',
})

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
        require('lspconfig').lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' },
                    }
                }
            }
        })
    end
  },
})

local cmp = require('cmp')
local cmp_format = require('lsp-zero').cmp_format()

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
        { name = 'path' },
    },
    formatting = cmp_format,
})
