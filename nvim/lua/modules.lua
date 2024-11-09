local M = {}

local function map(mode, keys, action, desc)
  desc = desc or ""
  local opts = { noremap = true, silent = true, desc = desc }
  vim.keymap.set(mode, keys, action, opts)
end

M.map = map

return M
