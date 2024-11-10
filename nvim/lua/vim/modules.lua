local M = {}

function M.map(mode, keys, action, desc)
    desc = desc or ""
    local opts = { noremap = true, silent = true, desc = desc }
    vim.keymap.set(mode, keys, action, opts)
end

function M.telescope_lazy_action(command, action, desc)
    return {
        "<leader>f" .. command,
        function()
            require("telescope.builtin")[action]()
        end,
        desc
    }
end

function M.toggle_inlay_hint()
    local is_enabled = vim.lsp.inlay_hint.is_enabled()
    vim.lsp.inlay_hint.enable(not is_enabled)
end

function M.autocmds()
    local autocmd = vim.api.nvim_create_autocmd
end

return M
