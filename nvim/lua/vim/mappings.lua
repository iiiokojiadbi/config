local map = require("vim.modules").map

local M = {}

M.general = function()
  map({ "n" }, ";", ":", "general войти в COMMAND")
  map({ "i" }, "jj", "<ESC>", "general выйти в NORMAL")
  map({ "n" }, "<c-n>", ":nohlsearch<CR>", "general выключить подсветку поиска")
  map({ "n" }, "<c-s>", "<cmd>w<CR>", "general сохранить файл")
  map({ "n" }, "<c-c>", "<cmd>%y+<CR>", "general копировать весь файл")
  map({ "n" }, "x", '"_x', "general удалить символ")
  map({ "v" }, "<", "<gv", "general подвинуть строку без выхода из режима")
  map({ "v" }, ">", ">gv", "general подвинуть строку без выхода из режима")
  map({ "v" }, "p", '"_dP', "general вставить без замены")
  map({ "n" }, "|", ":vsplit<CR>", "Вертикальная вкладка")
  map({ "n" }, "\\", ":split<CR>", "Горизонтальная вкладка")

  -- Vertical scroll and center
  map({ "n" }, "<c-d>", "<c-d>zz")
  map({ "n" }, "<c-u>", "<c-u>zz")

  -- Find and center
  map({ "n" }, "n", "nzzzv")
  map({ "n" }, "n", "Nzzzv")

  -- Перемещение курсора в INSERT режиме
  map({ "i" }, "<c-b>", "<ESC>^i", "move в начало строки")
  map({ "i" }, "<c-e>", "<End>", "move в конец строки")
  map({ "i" }, "<c-h>", "<Left>", "move влево")
  map({ "i" }, "<c-l>", "<Right>", "move вправо")
  map({ "i" }, "<c-j>", "<Down>", "move вниз")
  map({ "i" }, "<c-k>", "<Up>", "move вверх")

  -- Comment
  map({ "n" }, "<leader>/", "gcc", "toggle комментарий")
  map({ "v" }, "<leader>/", "gc", "toggle комментарий")

  -- Tmux-navigator
  map({ "n" }, "<c-l>", "<cmd>:TmuxNavigateRight<cr>", "switch вправо")
  map({ "n" }, "<c-h>", "<cmd>:TmuxNavigateLeft<cr>", "switch влево")
  map({ "n" }, "<c-k>", "<cmd>:TmuxNavigateUp<cr>", "switch вверх")
  map({ "n" }, "<c-j>", "<cmd>:TmuxNavigateDown<cr>", "switch вниз")

  -- Перемещние по буферам без tmux
  -- map({ "n" }, "<c-h>", "<C-w>h", "switch окно слева")
  -- map({ "n" }, "<c-l>", "<C-w>l", "switch окно справа")
  -- map({ "n" }, "<c-j>", "<C-w>j", "switch окно снизу")
  -- map({ "n" }, "<c-k>", "<C-w>k", "switch окно сверху")
end

return M
