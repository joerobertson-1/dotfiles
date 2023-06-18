require("nvim-tree").setup({
  filters = {
    dotfiles = false
  },
  renderer = {
    group_empty = true,
    root_folder_label = false,
    icons = {
      git_placement = "signcolumn",
      show = {
        git = true,
        file = true,
      },
      glyphs = {
        git = {
          unstaged = "•",
          staged = "•",
          unmerged = "•",
          renamed = "•",
          deleted = "•",
          untracked = "•",
          ignored = "•",
        }
      }
    }
  }
})
