local M = {}

M.icons = {
  Error = " ",
  Warn = " ",
  Hint = " ",
  Info = " ",
  Message = "󰍡 "
}

--- Toggle inlay hints
function M.toggle_inlay_hint()
  local is_enabled = vim.lsp.inlay_hint.is_enabled()
  vim.lsp.inlay_hint.enable(not is_enabled)
end

-- Autocommands
function M.autocmds()
  local autocmd = vim.api.nvim_create_autocmd

  vim.b.miniindentscope_disable = true
  autocmd("TermOpen", {
    desc = "Disable 'mini.indentscope' in terminal buffer",
    callback = function(data)
      vim.b[data.buf].miniindentscope_disable = true
    end,
  })
end

return M
