require("catppuccin").setup({
  flavour = "mocha",
  integrations = {
    telescope = true,
    harpoon = true,
    treesitter = true,
    gitgutter = true,
    cmp = true,
  }
})

vim.cmd.colorscheme "catppuccin"
