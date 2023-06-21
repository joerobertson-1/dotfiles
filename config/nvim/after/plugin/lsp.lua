local lsp = require('lsp-zero').preset({})
local builtin = require('telescope.builtin')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
  lsp.buffer_autoformat()
  local opts = { buffer = bufnr }

  -- vim.keymap.set({ 'n', 'x' }, '<leader>lf', function()
  --   vim.lsp.buf.format({ async = false, timeout_ms = 10000 })

  --   vim.lsp.buf.code_action({
  --     filter = function(a) return a.isPreferred end,
  --     apply = true
  --   })
  -- end, opts)

  vim.keymap.set('n', '<leader>ll', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', { buffer = true })
  vim.keymap.set('n', 'gr', builtin.lsp_references, { buffer = true })
end)

lsp.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ['prettier'] = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'css', 'scss', 'json', 'yaml',
      'markdown', 'html', 'l' },
    -- if you have a working setup with null-ls
    -- you can specify filetypes it can format.
    -- ['null-ls'] = {'javascript', 'typescript'},
  }
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

local cmp = require('cmp')
local cmp_window = require "cmp.config.window"

cmp.setup({
  sources = {
    { name = "path" },
    { name = "nvim_lsp" },
    { name = "buffer",  keyword_length = 3 }
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  window = {
    completion = cmp_window.bordered(),
    documentation = cmp_window.bordered(),
  },
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
})

lsp.setup()
