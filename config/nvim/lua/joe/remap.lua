vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<esc>")

vim.keymap.set("n", "<leader>n", ":nohl<cr>")

-- In visual mode, use J and K to move lines up and down
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

-- Save with <C-s> anywhere
vim.keymap.set("n", "<C-s>", ":w<cr>")
vim.keymap.set("i", "<C-s>", "<ESC>:w<cr>a")

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
vim.keymap.set("n", "<leader>sx", ":close<cr>")

-- Quick nav
vim.keymap.set("n", "J", "3jzz")
vim.keymap.set("n", "K", "3kzz")

-- Ctrl-D and U automatically recentre
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>q", ":q<cr>")
vim.keymap.set("n", "<leader>w", ":w<cr>")

-- File tree
vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<cr>")
vim.keymap.set("n", "<leader>tr", ":NvimTreeFindFile<cr>")

-- Bufferline
vim.keymap.set("n", "<leader>jp", ":BufferLinePick<cr>", { desc = "Pick Buffer" })
vim.keymap.set("n", "<leader>jk", ":BufferLineCycleNext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>ji", ":BufferLineCyclePrev<cr>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<leader>jx", ":BufferLinePickClose<cr>", { desc = "Close Buffer" })
vim.keymap.set("n", "<leader>jda", ":Bdelete all<cr>", { desc = "Close All Buffers" })
vim.keymap.set("n", "<leader>jdo", ":Bdelete other<cr>", { desc = "Close Other Buffers" })

vim.keymap.set("n", "<leader>zm", ":ZenMode<cr>", { desc = "Zen Mode" })

