local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<Space>", "", opts)
vim.g.mapleader = " "

-- Basic mappings
map("n", "<C-s>", ":w<CR>", opts)
map("n", "<C-q>", ":q<CR>", opts)
map("n", "<C-f>", ":Telescope live_grep<CR>", opts)
map("n", "<C-p>", ":Telescope find_files<CR>", opts)
map("n", "<C-b>", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", opts)
