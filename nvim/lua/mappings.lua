require "nvchad.mappings"

-- add yours here

local map = require("modules").map

map({ "n" }, ";", ":", "rus general войти в CMD режим")
map({ "i" }, "jj", "<ESC>", "rus general выйти в нормальный режим")
map({ "n" }, "x", '"_x', "rus general удалить символ")
map({ "n" }, "<c-s>", "<cmd>w<CR>", "rus general сохранить файл")
map({ "n" }, "<c-c>", "<cmd>%y+<CR>", "rus general копировать весь файл")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
