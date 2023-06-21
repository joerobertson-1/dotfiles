local g = vim.g

g.VimuxOrientation = "h"
g.VimuxHeight = "30"

g["test#preserve_screen"] = false
g['test#javascript#jest#options'] = ''
g['test#javascript#jest#executable'] = 'npx jest'
-- g.neomake_open_list = true
g['test#strategy'] = {
  nearest = 'vimux',
  file = 'vimux',
  suite = 'vimux'
}
g['test#neovim#term_position'] = 'vert'

-- Vim-test actions
vim.keymap.set('n', '<leader>toc', ':TestNearest<CR>')
vim.keymap.set('n', '<leader>tof', ':TestFile<CR>')
vim.keymap.set('n', '<leader>tol', ':TestLast<CR>')
vim.keymap.set('n', '<leader>toa', ':TestSuite<CR>')

local neotest = require("neotest")

-- Neotest Actions
vim.keymap.set('n', '<leader>tc', "<cmd>lua require('neotest').run.run()<cr>", {})
vim.keymap.set('n', '<leader>tf', "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>", {})
vim.keymap.set('n', '<leader>ta', "<cmd>lua require('neotest').run.run({ suite = true })<cr>", {})
vim.keymap.set('n', '<leader>tl', "<cmd>lua require('neotest').run.run_last()<cr>", {})

-- Neotest Actions with Debugger
vim.keymap.set('n', '<leader>tdc', "<cmd>lua require('neotest').run.run({ strategy = 'dap' })<cr> <bar> :lua require'dapui'.open()<cr>", {})
vim.keymap.set('n', '<leader>tdf', "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap' })<cr> <bar> :lua require'dapui'.open()<cr>", {})
vim.keymap.set('n', '<leader>tda', "<cmd>lua require('neotest').run.run({ suite = true, strategy = 'dap' })<cr> <bar> :lua require'dapui'.open()<cr>", {})
vim.keymap.set('n', '<leader>tdl', "<cmd>lua require('neotest').run.run_last({ strategy = 'dap' })<cr> <bar> :lua require'dapui'.open()<cr>", {})

vim.keymap.set('n', '<leader>ts', "<cmd>lua require('neotest').summary.toggle()<cr>", {})
vim.keymap.set('n', '<leader>to', "<cmd>lua require('neotest').output.open({ enter = true, short = false })<cr>", {})
-- vim.keymap.set('n', '<leader>tf', ':TestFile<CR>')
-- vim.keymap.set('n', '<leader>tl', ':TestLast<CR>')
-- vim.keymap.set('n', '<leader>ts', ':TestSuite<CR>')

neotest.setup({
  adapters = {
    require('neotest-jest')({
      jestCommand = "npx jest",
      jestConfigFile = "custom.jest.config.ts",
      env = { CI = true },
      cwd = function(path)
        return vim.fn.getcwd()
      end,
    }),
  }
})
