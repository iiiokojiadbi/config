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

function dump(o)
  if type(o) == 'table' then
    local s = '{ '
    for k, v in pairs(o) do
      if type(k) ~= 'number' then k = '"' .. k .. '"' end
      s = s .. '[' .. k .. '] = ' .. dump(v) .. ','
    end
    return s .. '} '
  else
    return tostring(o)
  end
end

-- table.insert(opts.ensure_installed, "python")

M.dump = dump

return M
