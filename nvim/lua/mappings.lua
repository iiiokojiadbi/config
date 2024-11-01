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
map("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "toggle nvcheatsheet" })

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

-- Nvimtree
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtee открыть проводник" })
map("n", "<leader>E", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree переключить проводник" })

-- Conform
map("n", "<leader>fc", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "general форматировать файл" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle комментарий", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle комментарий", remap = true })

-- Tabufline
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer новый" })

map("n", "<leader>x", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer закрыть" })

map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer следующий" })

map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer предыдущий" })

-- whichkey
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey все привязки" })

-- !!! РАЗОБРАТЬ
-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope поиск по слову" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope поиск по буферам" })
map("n", "<leader>fm", "<cmd>Telescope marks<CR>", { desc = "telescope поиск по меткам" })
map("n", "<leader>fgc", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>fgs", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>fgS", "<cmd>Telescope git_stash<CR>", { desc = "telescope git stash" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope поиск по файлам" })
-- map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })

map(
  "n",
  "<leader>fh",
  "<cmd>Telescope help_tags<CR>",
  { desc = "telescope поиск по документации и помощи" }
)

map(
  "n",
  "<leader>fo",
  "<cmd>Telescope oldfiles<CR>",
  { desc = "telescope посмотреть недавно открытые файлы" }
)

map(
  "n",
  "<leader>fz",
  "<cmd>Telescope current_buffer_fuzzy_find<CR>",
  { desc = "telescope поиск по текущему буферу" }
)

map("n", "<leader>ft", function()
  require("nvchad.themes").open()
end, { desc = "telescope nvchad themes" })

map(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "telescope поиск по всем файлам" }
)

-- terminal
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal потерять фокус" })

-- new terminals
map("n", "<leader>th", function()
  require("nvchad.term").new { pos = "sp" }
end, { desc = "terminal открыть новый горизонтальный" })

map("n", "<leader>tv", function()
  require("nvchad.term").new { pos = "vsp" }
end, { desc = "terminal открыть новый вертикальный" })

-- toggleable
map({ "n", "t" }, "<A-v>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "terminal переключить вертикальный" })

map({ "n", "t" }, "<A-h>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal переключить горизонтальный" })

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal переключить плавающий" })
