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

-- Быстрый выход из режима вставки
map("i", "jj", "<ESC>", merge_opts({ desc = "Выход из вставки" }))

-- Буферы
map("n", "<leader>w", ":w<CR>", merge_opts({ desc = "Сохранить" }))

-- Выбрать все
map("n", "<C-f>a", "gg<S-v>G", merge_opts({ desc = "Выбрать все" }))

-- Удалить символ
map("n", "x", '"_x', merge_opts({ desc = "Удалить символ" }))


