require("joe.remap")

-- Disable netrew
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.wildfire_objects = {
  ['*'] = { "iw", "i'", 'i"', "i)", "i]", "i}", "ip", "it" }
}

-- vim.cmd("colorscheme catppuccin")

local opt = vim.opt

opt.updatetime = 500

opt.spelllang = "en_gb"
opt.spell = true

opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.scrolloff = 8

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.signcolumn = "yes"

opt.splitright = true
opt.splitbelow = true
