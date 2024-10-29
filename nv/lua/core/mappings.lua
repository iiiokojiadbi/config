local map = vim.keymap.set

local function merge_opts(value)
  local default = {}
  local opts = { noremap = true, silent = true }

  if not value then
    value = default
  end

  for k, v in pairs(value) do
    opts[k] = v
  end

  return opts
end

-- INSERT
map("i", "jj", "<ESC>", merge_opts({ desc = "Выход из вставки" }))

-- NORMAL
map("n", "<leader>w", ":w<CR>", merge_opts({ desc = "Сохранить" }))
map("n", "<C-f>a", "gg<S-v>G", merge_opts({ desc = "Выбрать все" }))
map("n", "x", '"_x', merge_opts({ desc = "Удалить символ" }))
map("n", "<leader>Q", ":qa<CR>", merge_opts({ desc = "Закрыть все" }))
map("n", "<C-h>", ":wincmd h<CR>", merge_opts({ desc = "Левая вкладка" }))
map("n", "<C-k>", ":wincmd k<CR>", merge_opts({ desc = "Верхняя вкладка" }))
map("n", "<C-j>", ":wincmd j<CR>", merge_opts({ desc = "Нижняя вкладка" }))
map("n", "<C-l>", ":wincmd l<CR>", merge_opts({ desc = "Правая вкладка" }))
map("n", "|", ":vsplit<CR>", merge_opts({ desc = "Вертикальная вкладка" }))
map("n", "\\", ":split<CR>", merge_opts({ desc = "Горизонтальная вкладка" }))
