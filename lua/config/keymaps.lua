vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

map("n", "<Esc>", "<cmd>nohlsearch<CR>")

map("n", "[d", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Previous diagnostic" })

map("n", "]d", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Next diagnostic" })

map("n", "<leader>d", vim.diagnostic.open_float, {
  desc = "Show diagnostic",
})

map("n", "<leader>dl", vim.diagnostic.setloclist, {
  desc = "Diagnostics list",
})

-- Regular window --

-- Navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })

-- Resize windows
map("n", "<M-Left>", "<cmd>vertical resize -5<CR>", { desc = "Decrease window width" })
map("n", "<M-Right>", "<cmd>vertical resize +5<CR>", { desc = "Increase window width" })
map("n", "<M-Up>", "<cmd>resize +3<CR>", { desc = "Increase window height" })
map("n", "<M-Down>", "<cmd>resize -3<CR>", { desc = "Decrease window height" })

-- Terminal window --

-- Navigation
map("t", "<C-h>", [[<C-\><C-n><C-w>h]], { desc = "Move to left window" })
map("t", "<C-l>", [[<C-\><C-n><C-w>l]], { desc = "Move to right window" })
map("t", "<C-j>", [[<C-\><C-n><C-w>j]], { desc = "Move to lower window" })
map("t", "<C-k>", [[<C-\><C-n><C-w>k]], { desc = "Move to upper window" })

-- Resize windows
map("t", "<M-Left>", [[<C-\><C-n><cmd>vertical resize -5<CR>i]], { desc = "Decrease window width" })
map("t", "<M-Right>", [[<C-\><C-n><cmd>vertical resize +5<CR>i]], { desc = "Increase window width" })
map("t", "<M-Up>", [[<C-\><C-n><cmd>resize +3<CR>i]], { desc = "Increase window height" })
map("t", "<M-Down>", [[<C-\><C-n><cmd>resize -3<CR>i]], { desc = "Decrease window height" })
