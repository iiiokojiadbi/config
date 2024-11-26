local function dump(o)
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

-- Служебная функция, которая закрывает все плавающие окна, когда вы нажимаете escape
local function close_floating()
    for _, win in pairs(vim.api.nvim_list_wins()) do
        if vim.api.nvim_win_get_config(win).relative == "win" then
            vim.api.nvim_win_close(win, false)
        end
    end
end


local M = {}



function M.get_config(name)
    return function()
        require("configs." .. name)
    end
end

M.dump = dump

function M.toggle_zen()
    if vim.g.zen_mode_active then
        require("zen-mode").toggle()
        vim.g.zen_mode_active = false
    else
        require("zen-mode").toggle()
        vim.g.zen_mode_active = true
    end
end

function M.escape()
    close_floating()
    vim.cmd(":noh")
end

return M
