-- vim.g.mapleader = " " -- set in set.lua
vim.keymap.set("n", "<leader>pe", ":Ex<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- window splitting
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- vertical split
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- horizontal split
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split

-- managing tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- greatest remap ever
-- paste without copying to buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- copy to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- plugins

-- NvimTree
vim.keymap.set("n", "<leader>pt", ":NvimTreeToggle<CR>")
