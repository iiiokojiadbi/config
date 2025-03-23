local map = vim.keymap.set

local M = {}

function M.setup()
  map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Убрать выделение поиска" })

  map("n", "<leader>w", "<cmd>w<CR>", { desc = "Сохранить файл" })
  map("t", "<Esc><Esc>", "<C-\\><C-n>", {
    desc = "Убрать фокус с окна терминала",
  })

  map("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
  map("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
  map("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
  map("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

  map("n", "<C-h>", "<C-w><C-h>", { desc = "Открыть окно слева" })
  map("n", "<C-l>", "<C-w><C-l>", { desc = "Открыть окно справа" })
  map("n", "<C-j>", "<C-w><C-j>", { desc = "Открыть окно снизу" })
  map("n", "<C-k>", "<C-w><C-k>", { desc = "Открыть окно сверху" })
end

return M
