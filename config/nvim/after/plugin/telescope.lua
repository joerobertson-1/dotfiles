local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<leader><space>', builtin.find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Find Grep' })
vim.keymap.set('n', '<leader>fd', builtin.lsp_document_symbols, { desc = 'Find Document Symbols' })
vim.keymap.set('n', '<leader>gb', builtin.git_branches, { desc = 'Git Branches' })
vim.keymap.set('n', '<leader>gg', builtin.git_status, { desc = 'Git Status' })
vim.keymap.set('n', '<leader>gl', builtin.git_commits, { desc = 'Git Log' })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = 'Find Current Symbol' })

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
