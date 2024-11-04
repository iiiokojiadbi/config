-- require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
-- local unmap = vim.keymap.del

-- Общие
map("n", ";", ":", { desc = "general войти в COMMAND" })
map("i", "jj", "<ESC>", { desc = "general выйти в NORMAL" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general выключить подсветку поиска" })
map("n", "<C-s>", "<cmd>w<CR>", { desc = "general сохранить файл" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general копировать весь файл" })
map("n", "x", '"_x', { desc = "general удалить символ" })
map("v", "<", "<gv", { desc = "general подвинуть строку без выхода из режима" })
map("v", ">", ">gv", { desc = "general подвинуть строку без выхода из режима" })
map("v", "p", '"_dP', { desc = "general вставить без замены" })

-- terminal
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal потерять фокус" })

-- Изменение размеров окна
map("n", "<Up>", ":resize -2<CR>", { desc = "general уменьшить размер буфера" })
map("n", "<Down>", ":resize +2<CR>", { desc = "general увеличить размер буфера" })
map("n", "<Left>", ":vertical resize -2<CR>", { desc = "general уменьшить размер вертикального буфера" })
map("n", "<Right>", ":vertical resize +2<CR>", { desc = "general увеличить размер вертикального буфера" })

-- Vertical scroll and center
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Find and center
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Перемещение курсора в INSERT режиме
map("i", "<C-b>", "<ESC>^i", { desc = "move в начало строки" })
map("i", "<C-e>", "<End>", { desc = "move в конец строки" })
map("i", "<C-h>", "<Left>", { desc = "move влево" })
map("i", "<C-l>", "<Right>", { desc = "move вправо" })
map("i", "<C-j>", "<Down>", { desc = "move вниз" })
map("i", "<C-k>", "<Up>", { desc = "move вверх" })

-- Перемещние по буферам
map("n", "<C-h>", "<C-w>h", { desc = "switch окно слева" })
map("n", "<C-l>", "<C-w>l", { desc = "switch окно справа" })
map("n", "<C-j>", "<C-w>j", { desc = "switch окно снизу" })
map("n", "<C-k>", "<C-w>k", { desc = "switch окно сверху" })


-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle комментарий", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle комментарий", remap = true })

-- Tabufline
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer новый" })

-- Tmux-navigator
map("n", "<c-l>", "<cmd>:TmuxNavigateRight<cr>", { desc = "switch tmux вправо" })
map("n", "<c-h>", "<cmd>:TmuxNavigateLeft<cr>", { desc = "switch tmux влево" })
map("n", "<c-k>", "<cmd>:TmuxNavigateUp<cr>", { desc = "switch tmux вверх" })
map("n", "<c-j>", "<cmd>:TmuxNavigateDown<cr>", { desc = "switch tmux вниз" })
