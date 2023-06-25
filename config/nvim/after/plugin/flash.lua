local flash = require("flash")
flash.setup({
  highlight = {
    label = {
      style = "overlay"
    }
  }
})

vim.keymap.set("n", "s", flash.jump)
vim.keymap.set("n", "S", flash.treesitter)
