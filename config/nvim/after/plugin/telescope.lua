local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader><space>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fds', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>fws', builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gg', builtin.git_status, {})
vim.keymap.set('n', '<leader>gl', builtin.git_commits, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

require("telescope").load_extension("ui-select")
require("telescope").setup {
  defaults = {
    path_display = { 'smart' },
    layout_config = {
      horizontal = {
        prompt_position = 'top'
      }
    },
    sorting_strategy = 'ascending',
    selection_strategy = 'closest'
  },
  pickers = {
    find_files = {
      theme = 'dropdown',
      layout_config = {
        mirror = true,
        anchor = 'top',
        prompt_position = 'top'
      }
    },
    git_status = {
      initial_mode = 'normal',
    },
    lsp_references = {
      theme = 'dropdown',
      fname_width = 50,
      initial_mode = 'normal',
      trim_text = true,
      layout_config = {
        width = 0.5
      }
    },
    lsp_definitions = {
      theme = 'dropdown',
      initial_mode = 'normal',
      trim_text = true,
      layout_config = {
        width = 0.5
      }
    },
  }
}
