local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<Space>", "", opts)
vim.g.mapleader = " "

-- Basic mappings
map("n", "<C-s>", ":w<CR>", opts)
map("n", "<C-q>", ":q<CR>", opts)
map("n", "<C-M-f>", ":FzfLua grep_visual<CR>", opts)
map("n", "<C-S-f>", ":FzfLua grep_visual<CR>", opts)
map("n", "<C-f>", ":FzfLua grep_curbuf<CR>", opts)
map("n", "<C-p>", ":FzfLua files<CR>", opts)
map("n", "<C-t>", ":FzfLua treesitter<CR>", opts)
map("n", "<C-y>", ":FzfLua buffers<CR>", opts)

