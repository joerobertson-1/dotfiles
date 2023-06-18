local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = "path"},
    {name = "nvim_lsp"},
    {name = "buffer", keyword_length=3}
  },
  mapping = {
    ['<TAB>'] = cmp.mapping.confirm({select = true})
  }
})

lsp.setup()
