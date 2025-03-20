local map = vim.keymap.set

local M = {}

local lsp_map = function(event, keys, func, desc, mode)
  mode = mode or "n"
  map(mode, keys, func, {
    buffer = event.buf,
    desc = "LSP: " .. desc,
  })
end

function M.lsp_inlay_hint(client, event)
  if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
    lsp_map(event, "<leader>th", function()
      vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled {
        bufnr = event.buf,
      })
    end, "переключить подсказки в строке")
  end
end

function M.lsp_keymaps(event)
  lsp_map(event, "<leader>ca", vim.lsp.buf.code_action, "действия по коду", { "n", "x" })
  lsp_map(event, "<leader>rn", vim.lsp.buf.rename, "переименовать все ссылки", { "n" })
  lsp_map(event, "<c-k>", vim.lsp.buf.signature_help, "показать информацию о сигнатуре", { "n" })
  lsp_map(event, "K", vim.lsp.buf.hover, "показать информацию", { "n" })
  -- map('gd', vim.lsp.buf.definition, 'goto definition | перейти к определению', { 'n' })
  -- map('gD', vim.lsp.buf.declaration, 'goto declaration | перейти к объявлению' { 'n' })
  -- map('gi', vim.lsp.buf.implementation, 'goto implementation | перейти к реализации', { 'n' })
  -- lsp_map(event, "gr", vim.lsp.buf.references, "показать все ссылки и упоминания", { "n" })
  -- map('go', vim.lsp.buf.type_definition, 'goto type definition | перейти к определению символа типа', { 'n' })
end

function M.setup()
  map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Убрать выделение поиска" })

  -- map('n', '<leader>q', vim.diagnostic.setloclist, {
  --     desc = 'Open diagnostic [Q]uickfix list'
  -- })

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
