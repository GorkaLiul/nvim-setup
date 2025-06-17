-- This is to use Ex command (vim file explorer VIVA VIETNA VIVA VIETNAMM)
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- TELESCOPE
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Find files
keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
-- Search for text in files (like grep)
 keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
-- Search for Open buffers 
keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
-- Buscar ayuda/documentación de Neovim
keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts)

-- TREESITTER
vim.keymap.set("n", "<leader>tt", ":TSPlaygroundToggle<CR>", { noremap = true, silent = true })


-- Spawn terminal vertical split
keymap("n", "<leader>ch", function()
  vim.cmd("vsplit | terminal")
end, opts)

-- Spawn terminal horizontal split
keymap("n", "<leader>cv", function()
  vim.cmd("split | terminal")
end, opts)

-- Jump from different split views (switching split horizontally)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Jump from different split views (switching split horizontally)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)

