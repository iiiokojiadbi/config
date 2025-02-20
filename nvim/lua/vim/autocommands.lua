local M = {}

function M.create()
    vim.api.nvim_create_autocmd('TextYankPost', {
        desc = 'Highlight when yanking (copying) text',
        group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
        callback = function() vim.highlight.on_yank() end
    })

    -- Показывать строку курсора только в активном окне
    local cursorGrp = vim.api.nvim_create_augroup("CursorLine", { clear = true })

    vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
        pattern = "*",
        command = "set cursorline",
        group = cursorGrp
    })

    vim.api.nvim_create_autocmd({ "InsertEnter", "WinLeave" }, {
        pattern = "*",
        command = "set nocursorline",
        group = cursorGrp
    })

    -- Показывать курсор в колонке и строке только в активном окне
    local cursorColGrp = vim.api.nvim_create_augroup("CursorColumn",
        { clear = true })

    vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
        pattern = "*",
        command = "set cursorcolumn",
        group = cursorColGrp
    })

    vim.api.nvim_create_autocmd({ "InsertEnter", "WinLeave" }, {
        pattern = "*",
        command = "set nocursorcolumn",
        group = cursorColGrp
    })
end

return M
