-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
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

local keymap = vim.keymap

keymap.set("n", "x", '"_x', { desc = "Удалить символ" })

-- Увеличить число/Уменьшить число
keymap.set("n", "+", "<C-a>", { desc = "Увеличить" })
keymap.set("n", "-", "<C-x>", { desc = "Уменьшить" })

-- Выбрать все
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Выбрать все" })

-- Сохранение файлов и выход
keymap.set("n", "<Leader>w", ":update<Return>", merge_opts({ desc = "Сохранить" }))
keymap.set("n", "<Leader>q", ":quit<Return>", merge_opts({ desc = "Закрыть окно" }))
keymap.set("n", "<Leader>Q", ":qa<Return>", merge_opts({ desc = "Закрыть все" }))

-- Табы
keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", merge_opts({ desc = "Следующий таб" }))
keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>", merge_opts({ desc = "Предыдущий таб" }))
keymap.set("n", "<leader>x", ":BufferLinePickClose<CR>", merge_opts({ desc = "Закрыть таб" }))
keymap.set("n", "<c-x>", ":BufferLineCloseOthers<CR>", merge_opts({ desc = "Закрыть все табы" }))
