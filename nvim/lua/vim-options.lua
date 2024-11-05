vim.cmd "set expandtab"
vim.cmd "set tabstop=2"
vim.cmd "set softtabstop=2"
vim.cmd "set shiftwidth=2"

for type, icon in pairs(require "icons") do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.g.mapleader = " "

vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true
vim.wo.relativenumber = true
--
-- Общие
vim.keymap.set("n", ";", ":", { desc = "general войти в COMMAND" })
vim.keymap.set("i", "jj", "<ESC>", { desc = "general выйти в NORMAL" })
vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", { desc = "general выключить подсветку поиска" })
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "general сохранить файл" })
vim.keymap.set("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general копировать весь файл" })
vim.keymap.set("n", "x", '"_x', { desc = "general удалить символ" })
vim.keymap.set("v", "<", "<gv", { desc = "general подвинуть строку без выхода из режима" })
vim.keymap.set("v", ">", ">gv", { desc = "general подвинуть строку без выхода из режима" })
vim.keymap.set("v", "p", '"_dP', { desc = "general вставить без замены" })

-- Перемещние по буферам
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "switch окно слева" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "switch окно справа" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "switch окно снизу" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "switch окно сверху" })

-- Vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Find and center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Перемещение курсора в INSERT режиме
vim.keymap.set("i", "<C-b>", "<ESC>^i", { desc = "move в начало строки" })
vim.keymap.set("i", "<C-e>", "<End>", { desc = "move в конец строки" })
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "move влево" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "move вправо" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "move вниз" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "move вверх" })

-- Comment
vim.keymap.set("n", "<leader>/", "gcc", { desc = "toggle комментарий", remap = true })
vim.keymap.set("v", "<leader>/", "gc", { desc = "toggle комментарий", remap = true })

-- Tmux-navigator
vim.keymap.set("n", "<c-l>", "<cmd>:TmuxNavigateRight<cr>", { desc = "switch tmux вправо" })
vim.keymap.set("n", "<c-h>", "<cmd>:TmuxNavigateLeft<cr>", { desc = "switch tmux влево" })
vim.keymap.set("n", "<c-k>", "<cmd>:TmuxNavigateUp<cr>", { desc = "switch tmux вверх" })
vim.keymap.set("n", "<c-j>", "<cmd>:TmuxNavigateDown<cr>", { desc = "switch tmux вниз" })
