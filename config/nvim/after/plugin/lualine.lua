require('lualine').setup({
  options = {
    theme = "catppuccin",
    globalstatus = true,
    ignore_focus = { 'NvimTree' },
  },
  sections = {
    lualine_x = { 'filetype' },
    lualine_y = {},
    lualine_z = {}
  }
})
