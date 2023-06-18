local g = vim.g

g.VimuxOrientation = "h"
g.VimuxHeight = "30"

-- g["test#preserve_screen"] = false
g['test#javascript#jest#options'] = ''
g['test#javascript#jest#executable'] = 'npx jest'
-- g.neomake_open_list = true
g['test#strategy'] = {
  nearest = 'vimux',
  file = 'vimux',
  suite = 'vimux'
}
g['test#neovim#term_position'] = 'vert'

vim.keymap.set('n', '<leader>tc', ':TestNearest<CR>')
vim.keymap.set('n', '<leader>tf', ':TestFile<CR>')
vim.keymap.set('n', '<leader>tl', ':TestLast<CR>')
vim.keymap.set('n', '<leader>ts', ':TestSuite<CR>')
