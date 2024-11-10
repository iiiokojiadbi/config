local map = require("vim.modules").map

local M = {}

M.general = function()
    map({ "n" }, ";", ":", "general войти в COMMAND")
    map({ "i" }, "jj", "<ESC>", "general выйти в NORMAL")
    map({ "n" }, "<C-h>", ":nohlsearch<CR>", "general выключить подсветку поиска")
    map({ "n" }, "<C-s>", "<cmd>w<CR>", "general сохранить файл")
    map({ "n" }, "<C-c>", "<cmd>%y+<CR>", "general копировать весь файл")
    map({ "n" }, "x", '"_x', "general удалить символ")
    map({ "v" }, "<", "<gv", "general подвинуть строку без выхода из режима")
    map({ "v" }, ">", ">gv", "general подвинуть строку без выхода из режима")
    map({ "v" }, "p", '"_dP', "general вставить без замены")
    map({ "n" }, "|", ":vsplit<CR>", "Вертикальная вкладка")
    map({ "n" }, "\\", ":split<CR>", "Горизонтальная вкладка")

    -- Перемещние по буферам
    map({ "n" }, "<C-h>", "<C-w>h", "switch окно слева")
    map({ "n" }, "<C-l>", "<C-w>l", "switch окно справа")
    map({ "n" }, "<C-j>", "<C-w>j", "switch окно снизу")
    map({ "n" }, "<C-k>", "<C-w>k", "switch окно сверху")

    -- Vertical scroll and center
    map({ "n" }, "<C-d>", "<C-d>zz")
    map({ "n" }, "<C-u>", "<C-u>zz")

    -- Find and center
    map({ "n" }, "n", "nzzzv")
    map({ "n" }, "n", "Nzzzv")

    -- Перемещение курсора в INSERT режиме
    map({ "i" }, "<C-b>", "<ESC>^i", "move в начало строки")
    map({ "i" }, "<C-e>", "<End>", "move в конец строки")
    map({ "i" }, "<C-h>", "<Left>", "move влево")
    map({ "i" }, "<C-l>", "<Right>", "move вправо")
    map({ "i" }, "<C-j>", "<Down>", "move вниз")
    map({ "i" }, "<C-k>", "<Up>", "move вверх")

    -- Comment
    map({ "n" }, "<leader>/", "gcc", "toggle комментарий")
    map({ "v" }, "<leader>/", "gc", "toggle комментарий")

    -- Tmux-navigator
    map({ "n" }, "<c-l>", "<cmd>:TmuxNavigateRight<cr>", "switch tmux вправо")
    map({ "n" }, "<c-h>", "<cmd>:TmuxNavigateLeft<cr>", "switch tmux влево")
    map({ "n" }, "<c-k>", "<cmd>:TmuxNavigateUp<cr>", "switch tmux вверх")
    map({ "n" }, "<c-j>", "<cmd>:TmuxNavigateDown<cr>", "switch tmux вниз")
end

return M
