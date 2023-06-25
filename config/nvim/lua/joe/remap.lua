vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<ESC>")

vim.keymap.set("n", "<leader>n", ":nohl<CR>")

-- In visual mode, use J and K to move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Save with <C-s> anywhere
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<ESC>:w<CR>a")

-- Increment numbers with leader + and -
vim.keymap.set("n", "<leader>+", "<C-a>")
vim.keymap.set("n", "<leader>-", "<C-x>")

-- Yanking
vim.keymap.set("n", "<leader>y", "\"_y")
vim.keymap.set("v", "<leader>y", "\"_y")

-- Window management
vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>se", "<C-w>=")
vim.keymap.set("n", "<leader>sx", ":close<CR>")

-- Quick nav
vim.keymap.set("n", "J", "3jzz")
vim.keymap.set("n", "K", "3kzz")

-- vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
-- vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
-- vim.keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
-- vim.keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- Ctrl-D and U automatically recentre
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- File tree
vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tr", ":NvimTreeFindFile<CR>")

-- Bufferline
vim.keymap.set("n", "<leader>jp", ":BufferLinePick<CR>", { desc = "Pick Buffer" })
vim.keymap.set("n", "<leader>jk", ":BufferLineCycleNext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>ji", ":BufferLineCyclePrev<CR>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<leader>jx", ":BufferLinePickClose<CR>", { desc = "Close Buffer" })
vim.keymap.set("n", "<leader>jda", ":Bdelete all<cr>", { desc = "Close All Buffers" })

vim.keymap.set("n", "<leader>zm", ":ZenMode<cr>", { desc = "Zen Mode" })

