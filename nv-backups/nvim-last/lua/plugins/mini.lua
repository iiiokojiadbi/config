local get_config = require("modules").get_config

return {
    {
        "echasnovski/mini.nvim",
        name = "mini",
        version = false,
        init = function()
            package.preload["nvim-web-devicons"] = function()
                package.loaded["nvim-web-devicons"] = {}
                require("mini.icons").mock_nvim_web_devicons()
                return package.loaded["nvim-web-devicons"]
            end
        end,

        event = function()
            if vim.fn.argc() == 0 then
                return "VimEnter"
            else
                return {"InsertEnter", "LspAttach"}
            end
        end,

        config = function()
            local configs = require('configs.mini')
            local mini_modules = {
                "ai", "icons", "bufremove", "indentscope", "bracketed", "move",
                "files", "surround", "pairs"
            }

            for _, module in ipairs(mini_modules) do
                require("mini." .. module).setup(configs[module])
            end
        end
    }
}
