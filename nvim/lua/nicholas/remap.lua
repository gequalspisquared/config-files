-- vim.g.mapleader = " " -- set in set.lua
vim.g.mapleader = " "

-- explorer
-- vim.keymap.set("n", "<leader>ee", ":Ex<CR>")

-- move selected lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- center at bottom
vim.keymap.set("n", "G", "Gzz")

-- not sure actually
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
-- tab navigation
vim.keymap.set("n", "<leader>t1", "1gt")
vim.keymap.set("n", "<leader>t2", "2gt")
vim.keymap.set("n", "<leader>t3", "3gt")
vim.keymap.set("n", "<leader>t4", "4gt")
vim.keymap.set("n", "<leader>t5", "5gt")
vim.keymap.set("n", "<leader>t6", "6gt")
vim.keymap.set("n", "<leader>t7", "7gt")
vim.keymap.set("n", "<leader>t8", "8gt")
vim.keymap.set("n", "<leader>t9", "9gt")
vim.keymap.set("n", "<leader>t0", ":tablast<CR>")

-- greatest remap ever
-- paste without copying to buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- copy to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- plugins

-- NvimTree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Bufferline
vim.keymap.set("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>")
vim.keymap.set("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>")
vim.keymap.set("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>")
vim.keymap.set("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>")
vim.keymap.set("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>")
vim.keymap.set("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>")
vim.keymap.set("n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>")
vim.keymap.set("n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>")
vim.keymap.set("n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>")
vim.keymap.set("n", "<leader>$", "<Cmd>BufferLineGoToBuffer -1<CR>")
-- vim.keymap.set("n", "<leader>bd", "<Cmd>bd<CR> <Cmd>")

-- Trouble
vim.keymap.set("n", "<leader>tt", "<Cmd>TroubleToggle<CR>")
