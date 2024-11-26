local M = {}

function M.get_config(name)
    return function()
        require("configs." .. name)
    end
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

M.dump = dump

function M.autocmds()
    local api = vim.api

    api.nvim_create_autocmd("FileType", {
        pattern = { "html", "markdown", "text" },
        callback = function()
            vim.opt_local.spell = true
        end,
    })

    -- Highlight on yank
    local yankGrp = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
    api.nvim_create_autocmd("TextYankPost", {
        group = yankGrp,
        pattern = "*",
        callback = function()
            vim.highlight.on_yank()
        end,
        desc = "Highlight yank",
    })

    -- show cursor line only in active window
    local cursorGrp = api.nvim_create_augroup("CursorLine", { clear = true })
    api.nvim_create_autocmd(
        { "InsertLeave", "WinEnter" },
        { pattern = "*", command = "set cursorline", group = cursorGrp })

    api.nvim_create_autocmd(
        { "InsertEnter", "WinLeave" },
        { pattern = "*", command = "set nocursorline", group = cursorGrp }
    )

    -- show cursor col line only in active window
    local cursorColGrp = api.nvim_create_augroup(
        "CursorColumn",
        { clear = true })

    api.nvim_create_autocmd(
        { "InsertLeave", "WinEnter" },
        { pattern = "*", command = "set cursorcolumn", group = cursorColGrp }
    )
    api.nvim_create_autocmd(
        { "InsertEnter", "WinLeave" },
        { pattern = "*", command = "set nocursorcolumn", group = cursorColGrp }
    )

    -- show Blank Line only in active window
    -- local blanklineGrp = api.nvim_create_augroup("BlankLine", { clear = true })
    -- api.nvim_create_autocmd(
    --   { "InsertLeave", "WinEnter" },
    --   { pattern = "*", command = ":IndentBlanklineEnable", group = blanklineGrp }
    -- )
    -- api.nvim_create_autocmd(
    --   { "InsertEnter", "WinLeave" },
    --   { pattern = "*", command = ":IndentBlanklineDisable", group = blanklineGrp }
    -- )

    -- auto-reload files when modified externally
    -- https://unix.stackexchange.com/a/383044
    vim.api.nvim_create_autocmd(
        { "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" },
        {
            command = "if mode() != 'c' | checktime | endif",
            pattern = { "*" },
        })

    -- Don't want relative no on inactive Windows
    -- local relativeNo = api.nvim_create_augroup("RelativeNo", { clear = true })
    --
    -- api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave" }, {
    --   pattern = "*",
    --   group = relativeNo,
    --   callback = function()
    --     if not vim.g.zen_mode_active then
    --       vim.cmd([[set relativenumber]])
    --     end
    --   end,
    -- })
    --
    -- api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter" }, {
    --   pattern = "*",
    --   group = relativeNo,
    --   callback = function()
    --     if not vim.g.zen_mode_active then
    --       vim.cmd([[set norelativenumber]])
    --     end
    --   end,
    -- })
end

return M
