require("catppuccin").setup({
  flavour = "mocha",
  term_colors = true,
	integrations = {
		telescope = true,
		harpoon = true,
		treesitter = true,
		gitgutter = true,
	}
})

vim.cmd.colorscheme "catppuccin"
