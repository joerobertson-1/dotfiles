require("nvim-tree").setup({
  filters = {
    dotfiles = false
  },
  renderer = {
    group_empty = true,
    root_folder_label = false,
    icons = {
      show = {
        git = false,
        file = true,
      }
    }
  }
})
