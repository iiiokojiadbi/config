require "nvchad.mappings"

-- add yours here

local map = require("vim.modules").map

map({ "n" }, ";", ":", "rus general войти в CMD режим")
map({ "i" }, "jj", "<ESC>", "rus general выйти в нормальный режим")
map({ "n" }, "x", '"_x', "rus general удалить символ")
map({ "n" }, "<c-s>", "<cmd>w<CR>", "rus general сохранить файл")
map({ "n" }, "<c-c>", "<cmd>%y+<CR>", "rus general копировать весь файл")

-- Перемещение курсора в INSERT режиме
map({ "i" }, "<c-b>", "<ESC>^i", "rus move в начало строки")
map({ "i" }, "<c-e>", "<End>", "rus move в конец строки")
map({ "i" }, "<c-h>", "<Left>", "rus move влево")
map({ "i" }, "<c-l>", "<Right>", "rus move вправо")
map({ "i" }, "<c-j>", "<Down>", "rus move вниз")
map({ "i" }, "<c-k>", "<Up>", "rus move вверх")

-- Tmux-navigator
map({ "n" }, "<c-l>", "<cmd>:TmuxNavigateRight<cr>", "rus switch вправо")
map({ "n" }, "<c-h>", "<cmd>:TmuxNavigateLeft<cr>", "rus switch влево")
map({ "n" }, "<c-k>", "<cmd>:TmuxNavigateUp<cr>", "rus switch вверх")
map({ "n" }, "<c-j>", "<cmd>:TmuxNavigateDown<cr>", "rus switch вниз")

-- Comment
map({ "n" }, "<leader>/", "gcc", "rus toggle комментарий")
map({ "v" }, "<leader>/", "gc", "rus toggle комментарий")

vim.keymap.del({ "n" }, "<leader>n")
vim.keymap.del({ "n" }, "<leader>rn")
