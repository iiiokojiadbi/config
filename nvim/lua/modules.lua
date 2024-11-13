local M = {}

function M.map(mode, keys, action, desc)
  desc = desc or "'привязка без описания'"
  local opts = { noremap = true, silent = true, desc = desc }
  vim.keymap.set(mode, keys, action, opts)
end

function M.toggle_inlay_hint()
  local is_enabled = vim.lsp.inlay_hint.is_enabled()
  vim.lsp.inlay_hint.enable(not is_enabled)
end

return M
